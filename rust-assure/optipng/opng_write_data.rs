use std::convert::TryInto;
use std::io::{self, Write};
use std::fs::File;

struct Process {
    out_idat_size: u32,
    max_idat_size: u32,
    out_file_size: u32,
    best_idat_size: u32,
}

fn opng_write_data(stream: &mut File, data: &[u8], length: usize, process: &mut Process) -> io::Result<()> {
    let io_state_loc = 0x0020; // Example value, replace with actual logic
    let sig_idat = [0x49, 0x44, 0x41, 0x54];

    if io_state_loc == 0x0020 {
        if length == 8 {
            let chunk_sig = &data[4..8];
            if chunk_sig == sig_idat {
                process.out_idat_size += u32::from_be_bytes(data[0..4].try_into().unwrap());
                if process.out_idat_size > process.max_idat_size {
                    panic!("IDAT size exceeded max limit");
                }
            }
        } else {
            panic!("Writing chunk header, expecting 8 bytes");
        }
    }

    stream.write_all(data)?;
    process.out_file_size += length as u32;

    Ok(())
}

fn main() {
    // Example usage
    let mut process = Process {
        out_idat_size: 0,
        max_idat_size: 1000,
        out_file_size: 0,
        best_idat_size: 0,
    };

    let data = vec![0, 0, 0, 8, 0x49, 0x44, 0x41, 0x54]; // Example data
    let mut file = File::create("output.png").unwrap();

    opng_write_data(&mut file, &data, data.len(), &mut process).unwrap();
}
