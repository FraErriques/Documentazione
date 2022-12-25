extern crate common;
// Note this useful idiom: importing names from outer (for mod tests) scope.
use common::*;
use entity::proxies;


fn main() {
    println!("This is an example of a library-caller.");
	println!("this is a call from test_console to common_signature() {}", common_signature() );
    other::inmodother();
    pippo::timbro_pippo();
    proxies::usp_some_entity_insert_::usp_some_entity_insert_signature();
    proxies::usp_some_entity_load_::usp_some_entity_load_signature();
}// main
