use std::io::{self, Write};
use std::fs::File;
use std::mem;

fn opng_write_data(png_ptr: *mut png_struct, data: *mut u8, length: usize) {
    let stream = unsafe { png_get_io_ptr(png_ptr) as *mut File };
    let io_state = unsafe { png_get_io_state(png_ptr) };
    let io_state_loc = io_state & 0x00f0;

    assert!((io_state & 0x0002) != 0 && (io_state_loc != 0), "Incorrect info in png_ptr->io_state");

    if io_state_loc == 0x0020 {
        assert!(length == 8, "Writing chunk header, expecting 8 bytes");
        let chunk_sig = unsafe { data.add(4) };
        let allow_crt_chunk = opng_allow_chunk(chunk_sig);
        
        if unsafe { std::slice::from_raw_parts(chunk_sig, 4) == sig_IDAT } {
            let crt_chunk_is_idat = true;
            unsafe {
                process.out_idat_size += u32::from_be_bytes(std::slice::from_raw_parts(data, 4).try_into().unwrap());
            }
            if stream.is_null() {
                if unsafe { process.out_idat_size > process.max_idat_size } {
                    panic!();
                }
            }
        } else {
            let crt_chunk_is_idat = false;
            if unsafe { std::slice::from_raw_parts(chunk_sig, 4) == sig_PLTE || std::slice::from_raw_parts(chunk_sig, 4) == sig_tRNS } {
                unsafe {
                    process.out_plte_trns_size += u32::from_be_bytes(std::slice::from_raw_parts(data, 4).try_into().unwrap()) + 12;
                }
            }
        }
    } else if io_state_loc == 0x0080 {
        assert!(length == 4, "Writing chunk CRC, expecting 4 bytes");
    }

    if stream.is_null() {
        return;
    }

    if io_state_loc != 0x0010 && !allow_crt_chunk {
        return;
    }

    match io_state_loc {
        0x0020 => {
            if crt_chunk_is_idat {
                if crt_idat_offset == 0 {
                    crt_idat_offset = unsafe { stream.as_ref().unwrap().stream_position().unwrap() };
                    crt_idat_size = if unsafe { process.best_idat_size > 0 } {
                        unsafe { process.best_idat_size }
                    } else {
                        length as u64
                    };
                    unsafe {
                        png_save_uint_32(data, crt_idat_size as u32);
                        crt_idat_crc = crc32(0, sig_IDAT.as_ptr(), 4);
                    }
                } else {
                    return;
                }
            } else {
                if crt_idat_offset != 0 {
                    let mut buf = [0u8; 4];
                    unsafe {
                        png_save_uint_32(buf.as_mut_ptr(), crt_idat_crc);
                        if stream.as_ref().unwrap().write_all(&buf).is_err() {
                            io_state = 0;
                        }
                        process.out_file_size += 4;
                    }
                    if unsafe { process.out_idat_size != crt_idat_size } {
                        assert!(unsafe { process.best_idat_size == 0 }, "Wrong guess of the output IDAT size");
                        opng_check_idat_size(unsafe { process.out_idat_size });
                        png_save_uint_32(buf.as_mut_ptr(), unsafe { process.out_idat_size });
                        if unsafe { stream.as_ref().unwrap().seek(io::SeekFrom::Start(crt_idat_offset)).is_err() || stream.as_ref().unwrap().write_all(&buf).is_err() } {
                            io_state = 0;
                        }
                    }
                    if io_state == 0 {
                        unsafe { png_error(png_ptr, b"Can't finalize IDAT\0".as_ptr() as *const i8) };
                    }
                    crt_idat_offset = 0;
                }
            }
        },
        0x0040 => {
            if crt_chunk_is_idat {
                unsafe { crt_idat_crc = crc32(crt_idat_crc, data, length as u32) };
            }
        },
        0x0080 => {
            if crt_chunk_is_idat {
                return;
            }
        },
        _ => {}
    }

    if unsafe { stream.as_ref().unwrap().write_all(std::slice::from_raw_parts(data, length)).is_err() } {
        unsafe { png_error(png_ptr, b"Can't write the output file\0".as_ptr() as *const i8) };
    }
    unsafe { process.out_file_size += length as u64 };
}