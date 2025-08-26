use std::fmt::{self, Write};

fn opng_snprintf_impl(buffer: &mut [u8], format: &str, args: fmt::Arguments) -> i32 {
    let mut writer = BufferWriter::new(buffer);
    match write!(writer, "{}", args) {
        Ok(_) => {
            let written = writer.written();
            if written < buffer.len() {
                buffer[written] = 0; // Null-terminate the string
                written as i32
            } else {
                if !buffer.is_empty() {
                    buffer[buffer.len() - 1] = 0; // Ensure null-termination
                }
                -1
            }
        }
        Err(_) => -1,
    }
}

struct BufferWriter<'a> {
    buffer: &'a mut [u8],
    pos: usize,
}

impl<'a> BufferWriter<'a> {
    fn new(buffer: &'a mut [u8]) -> Self {
        BufferWriter { buffer, pos: 0 }
    }

    fn written(&self) -> usize {
        self.pos
    }
}

impl<'a> Write for BufferWriter<'a> {
    fn write_str(&mut self, s: &str) -> fmt::Result {
        let bytes = s.as_bytes();
        let space_left = self.buffer.len().saturating_sub(self.pos);
        let to_write = bytes.len().min(space_left);

        if to_write > 0 {
            self.buffer[self.pos..self.pos + to_write].copy_from_slice(&bytes[..to_write]);
            self.pos += to_write;
            Ok(())
        } else {
            Err(fmt::Error)
        }
    }
}

// Usage example
fn main() {
    let mut buffer = [0u8; 100];
    let format = "Hello, {}!";
    let args = format_args!("world");
    let result = opng_snprintf_impl(&mut buffer, format, args);

    if result >= 0 {
        println!("Formatted string: {}", String::from_utf8_lossy(&buffer[..result as usize]));
    } else {
        println!("Formatting failed");
    }
}
