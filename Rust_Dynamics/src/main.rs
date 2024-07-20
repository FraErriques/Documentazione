
fn velocity  (time_from : f32, time_to : f32, want_average : bool) -> (f32,f32,f32) {
    if( want_average){
        if(time_to-time_from <=0.0 ){
            std::process::exit(1);
        }
        else {
            return (0.0, 0.0, (position(time_to).2 -position(time_from).2)/(time_to-time_from) );
        }
    }
    else{
        if(time_to-time_from <=0.0 ){
            std::process::exit(1);
        }
        else {
            return (0.0, 0.0, (position(time_to).2-position(time_to-0.01).2)/(0.01) ) ;
        }
    }
}// position

/// .
fn position  (elapsed : f32) -> (f32,f32,f32) {
    let height = 100.0;
    return (0.0, 0.0, height-9.81*elapsed);// is the motion of a falling object along the z coordinate. They are constant x=y=0.
}// position

fn main() {
    let elapsed = 6.1;
    println!("This is the motion of a falling object along the z coordinate. They are constant x=y=0. position is {:?} ",
      position(elapsed));
      println!("The AVERAGE velocity is  {:?} ",  velocity(0.0, elapsed, true) );  
      println!("The POINT velocity is  {:?} "  ,  velocity(0.0, elapsed, false) );  
}
