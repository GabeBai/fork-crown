use std::io::{Read, Seek};
use std::fs::File;
use std::mem::size_of;

fn opng_read_data(png_ptr: *mut png_struct, data: *mut u8, length: usize) {
    let stream = unsafe { png_get_io_ptr(png_ptr) as *mut File };
    let io_state = unsafe { png_get_io_state(png_ptr) };
    let io_state_loc = io_state & 0x00f0;
    
    unsafe {
        let mut file = &mut *stream;
        if file.read_exact(std::slice::from_raw_parts_mut(data, length)).is_err() {
            png_error(png_ptr, b"Can't read the input file or unexpected end of file\0".as_ptr() as *const i8);
        }
    }

    if process.in_file_size == 0 {
        assert!(length == 8, "PNG I/O must start with the first 8 bytes");
        process.in_datastream_offset = unsafe { file.stream_position().unwrap() as i64 } - 8;
        process.status |= INPUT_HAS_PNG_DATASTREAM;
        if io_state_loc == 0x0010 {
            process.status |= INPUT_HAS_PNG_SIGNATURE;
        }
        if process.in_datastream_offset == 0 {
            process.status |= INPUT_IS_PNG_FILE;
        } else if process.in_datastream_offset < 0 {
            unsafe { png_error(png_ptr, b"Can't get the file-position indicator in input file\0".as_ptr() as *const i8) };
        }
        process.in_file_size = process.in_datastream_offset as u64;
    }
    
    process.in_file_size += length as u64;
    
    assert!((io_state & 0x0001) != 0 && io_state_loc != 0, "Incorrect info in png_ptr->io_state");
    
    if io_state_loc == 0x0020 {
        assert!(length == 8, "Reading chunk header, expecting 8 bytes");
        let chunk_sig = unsafe { data.add(4) };
        
        if unsafe { std::slice::from_raw_parts(chunk_sig, 4) } == sig_IDAT {
            assert!(png_ptr == read_ptr, "Incorrect I/O handler setup");
            
            if unsafe { png_get_rows(read_ptr, read_info_ptr).is_null() } {
                assert!(process.in_idat_size == 0, "Found IDAT with no rows");
                if unsafe { png_get_image_height(read_ptr, read_info_ptr) } == 0 {
                    return;
                }
                assert!(!unsafe { pngx_malloc_rows(read_ptr, read_info_ptr, 0) }.is_null(), 
                        "Failed allocation of image rows; unsafe libpng allocator");
                unsafe { png_data_freer(read_ptr, read_info_ptr, 2, 0x0040) };
            } else {
                process.status |= INPUT_HAS_JUNK;
            }
            
            process.in_idat_size += u32::from_be_bytes(unsafe { *(data as *const [u8; 4]) });
        } else if unsafe { std::slice::from_raw_parts(chunk_sig, 4) } == sig_PLTE 
                  || unsafe { std::slice::from_raw_parts(chunk_sig, 4) } == sig_tRNS {
            process.in_plte_trns_size += u32::from_be_bytes(unsafe { *(data as *const [u8; 4]) }) + 12;
        } else {
            unsafe { opng_handle_chunk(png_ptr, chunk_sig) };
        }
    } else if io_state_loc == 0x0080 {
        assert!(length == 4, "Reading chunk CRC, expecting 4 bytes");
    }
}