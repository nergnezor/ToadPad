#![no_std]
#![no_main]

use core::pin::Pin;

use esp_backtrace as _;
use esp_hal::{
    delay::Delay,
    gpio::{Io, Level, Output},
    i2c::I2c,
    prelude::*,
};
use esp_println::{print, println};
use ht16k33_async::HT16K33;

// bind_interrupts!(struct Irqs {
//     I2C1_IRQ => i2c::InterruptHandler<I2C1>;
// });

#[entry]
fn main() -> ! {
    #[allow(unused)]
    let peripherals = esp_hal::init(esp_hal::Config::default());
    let delay = Delay::new();

    esp_println::logger::init_logger_from_env();
    // Set GPIO0 as an output, and set its state high initially.
    let io = Io::new(peripherals.GPIO, peripherals.IO_MUX);
    let mut led = Output::new(io.pins.gpio4, Level::High);

    loop {
        led.toggle();
        delay.delay_millis(2000);

        log::info!("Hello Erik!");
    }

    // let io = Io::new(peripherals.g, io_mux)

    //     let i2c = I2c::new(peripherals.I2C0, io.pin(0), 1, 100_000.Hz());
    //     let mut driver = HT16K33::new(&mut i2c, 0x70);

    //     driver.setup().await.unwrap();

    //     led.set_high();

    //     let mut buffer = [0u8; 2 * 4];

    //     loop {
    //         for c in 0..8 {
    //             for l in 0..8 {
    //                 buffer[c] ^= 1 << l;

    //                 driver.write_whole_display(&buffer).await.unwrap();

    //                 Timer::after_millis(50).await;
    //             }
    //         }
    //     }
}
