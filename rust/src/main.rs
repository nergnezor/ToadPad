#![no_std]
#![no_main]

use esp_backtrace as _;
use esp_hal::{
    delay::Delay,
    gpio::{Io, Level, Output},
    i2c::I2c,
    peripherals::{self, Peripherals},
    prelude::*,
};
use fugit::Rate;
use ht16k33_async::HT16K33;
// use ht16k33::HT16K33;

fn blink_led(peripherals: Peripherals) -> ! {
    // Set GPIO4 as an output, and set its state high initially.
    let io = Io::new(peripherals.GPIO, peripherals.IO_MUX);
    let delay = Delay::new();

    let mut led = Output::new(io.pins.gpio4, Level::High);

    loop {
        led.toggle();
        delay.delay_millis(2000);

        log::info!("Hello Erik!");
    }
}

#[entry]
fn main() -> ! {
    #[allow(unused)]
    let peripherals = esp_hal::init(esp_hal::Config::default());

    esp_println::logger::init_logger_from_env();

    // blink_led(peripherals);

    init_led_matrix(peripherals);

    loop {
        log::info!("Hello Erik!");
        Delay::new().delay_millis(1000);
    }
}

async fn init_led_matrix(peripherals: Peripherals) -> ! {
    let io = Io::new(peripherals.GPIO, peripherals.IO_MUX);
    let sda_pin = io.pins.gpio14;
    let scl_pin = io.pins.gpio22;
    let freq = Rate::<u32, 1, 1>::from_raw(100_000);
    // let i2c = I2c::new(peripherals.I2C0, sda_pin, scl_pin, freq);
    let i2c = I2c::new_async(peripherals.I2C0, sda_pin, scl_pin, freq);

    let mut driver = HT16K33::new(i2c, 0x70);
    driver.setup().await.unwrap();

    // led.set_high();

    let mut buffer = [0u8; 2 * 4];

    loop {
        for c in 0..8 {
            for l in 0..8 {
                buffer[c] ^= 1 << l;

                driver.write_whole_display(&buffer).await.unwrap();

                Delay::new().delay_millis(100);
            }
        }
    }

    // let mut ht16k33 = HT16K33::new(i2c, 0x70);
    // ht16k33.initialize();
    // ht16k33.update_bicolor_led(4, 4, Color::Red);
    // ht16k33.set_display(Display::ON);
    // ht16k33.write_display_buffer();
}
