
use rand::Rng;
use std::cmp::Ordering;
use std::io;

// the EntryPoit "main" has to be contained in an omonimous file.
fn main() {
    println!("Guess the number!");

    let secret_number = rand::thread_rng().gen_range(1..=100);

    // --snip--

    println!("The secret number is: {secret_number}");

    loop {
        println!("Please input your guess.");

        // --snip--


        let mut guess = String::new();

        io::stdin()
            .read_line(&mut guess)
            .expect("Failed to read line");

        let guess: u32 = guess.trim().parse().expect("Please type a number!");

        println!("You guessed: {guess}");

        match guess.cmp(&secret_number) {
            Ordering::Less => println!("Too small!"),
            Ordering::Greater => println!("Too big!"),
            Ordering::Equal =>{
				println!("You win! Bye");{break;}
			}
        }//match
		
		let mut sum = 0;
		for n in 1..11 {
			sum += n;
			println!("Sum=={}", sum);
		}
		assert_eq!(sum, 55);
    }// loop
}// main