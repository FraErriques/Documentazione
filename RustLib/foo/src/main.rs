extern crate bar;

// Note this useful idiom: importing names from outer (for mod tests) scope.
use bar::*;

fn main() {
    println!("This is an example of a library-caller.");
    #[test]
	it_works();

}// main
