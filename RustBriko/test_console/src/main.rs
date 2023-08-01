extern crate common;
// Note this useful idiom: importing names from outer (for mod tests) scope.
use common::*;
use entity::proxies;
use entity::entities::*;

fn array_builder(){
    let _xs: [i32; 5] = [1, 2, 3, 4, 5];
}

fn vector_builder(){
    let _xs = vec![1i32, 2, 3];
}

fn tuple_returner() -> (i32, f64){
    return (8, 2.7182818);
}

/* this is the entry point of Documentazione::RustBriko ,i.e. Documentazione::RustBriko::test_console 
   the syntax for doing that, is: 
    extern crate common;
    use common::*;
    Note this useful idiom: importing names from outer (for mod tests) scope.
    NB. on Sunday 09.July.2023 vsCode has been updated to version 1.80.0 on WinPlatform on host ITBZOW1069.
 */


fn main() {
    println!("This is an example of a library-caller.");
	println!("this is a call from test_console to common_signature() {}", common_signature() );
    other::inmodother();
    pippo::timbro_pippo();
    proxies::usp_some_entity_insert_::usp_some_entity_insert_signature();
    proxies::usp_some_entity_load_::usp_some_entity_load_signature();
    some_entity_layout_::some_entity_layout_signature();
    array_builder();
    vector_builder();
    let tu = tuple_returner();
    println!(" {}  {}", tu.0, tu.1 ); 
    let din_tu = Box::new(tu);
    println!(" {}  {}", din_tu.0, din_tu.1 ); 
}// main
