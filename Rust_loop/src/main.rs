
// downloaded from the Rust-Book
// built and tested on ITFORS1011
// compiled in MarinaDiGrosseto 2024.07.17
fn main() {
    let value = 456;
    let mut x = 1;
    let y = loop {
        x *= 10;
        if x > value {
            break x / 10;
        }
    };
    println!("largest power of ten that is smaller than value: {y}");

    let mut up = 1;
    'outer: loop {
        let mut down = 120;
        loop {
            if up > 100 {
                break 'outer;
            }

            if down < 4 {
                break;
            }

            down /= 2;
            up += 1;
            println!("up: {up}, down: {down}");
        }
        up *= 2;
    }
}