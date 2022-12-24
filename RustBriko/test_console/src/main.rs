extern crate common;
// Note this useful idiom: importing names from outer (for mod tests) scope.
use common::*;


fn main() {
    println!("This is an example of a library-caller.");
	println!("this is a call from test_console to common_signature() {}", common_signature() );
    other::inmodother();
}// main
