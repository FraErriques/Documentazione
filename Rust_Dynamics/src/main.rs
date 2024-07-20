

/// .
fn position  (timestamp : f32) -> (f32,f32,f32) {
    return (0.0, 0.0, 9.1+timestamp);// is the motion of a falling object along the z coordinate. They are constant x=y=0.
}// position

fn main() {
    println!("Hello, world! position is {:?} ", position(10.0));
}
