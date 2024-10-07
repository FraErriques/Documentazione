
fn acceleration  (time_from : f64, time_to : f64, want_average : bool) -> (f64,f64,f64) {
    if want_average {
        if time_to-time_from <=0.0 {
            std::process::exit(1);
        }
        else {
            return (0.0, 0.0, (velocity(time_to-0.1, time_to,false).2 -velocity(time_from-0.1, time_from,false).2)/(time_to-time_from) );
        }
    }
    else{
        if time_to-time_from <=0.0 {
            std::process::exit(1);
        }
        else {
            let v_from = velocity(time_from, time_from+0.1,true).2;
            let v_to = velocity(time_to-0.1, time_to,true).2;
            let v_numerator = v_to-v_from;
            let a = v_numerator/(time_to-time_from-0.1);
            println!("\n\nv_from = {}", v_from);
            println!("v_to = {}", v_to);
            println!("v_numerator = {}", v_numerator);
            println!("a = {} \n\n", a);
            return (0.0, 0.0,  ( velocity( time_to-(time_to-time_from)/10.0,          time_to ,                            false).2  -
                                velocity(            time_from,                         time_from+(time_to-time_from)/10.0,  false).2   )
                               /(time_to-time_from - (time_to-time_from)/10.0) ) ;
        }
    }
}// acceleration

fn velocity  (time_from : f64, time_to : f64, want_average : bool) -> (f64,f64,f64) {
    if want_average {
        if time_to-time_from <=0.0 {
            std::process::exit(1);
        }
        else {
            return (0.0, 0.0, (position(time_to).2 -position(time_from).2)/(time_to-time_from) );
        }
    }
    else{
        if time_to-time_from <=0.0 {
            std::process::exit(1);
        }
        else {
            return (0.0, 0.0, (position(time_to).2-position(time_to-0.0001).2)/(0.0001) ) ;
        }
    }
}// velocity



/// f0==position  f1==velocity   f2==acceleration
/// f0 =: -9.81/2*t^2 + initial_velocity*t + initial_position
/// f1 =: -9.81*t + initial_velocity
/// f2 =: -9.81 m/s^2
fn position  (elapsed : f64) -> (f64,f64,f64) {
    let initial_position = 1000.0;
    return (0.0, 0.0, initial_position-(9.81/2.0)*elapsed*elapsed);// is the motion of a falling object along the z coordinate. They are constant x=y=0.
}// position


// setup on Eulero::Obz 2024.august.12
fn main() {
    let elapsed = 9.1;
    println!("\n\nThis is the motion of a falling object along the z coordinate. They are constant x=y=0. 
      Position at elapsed {} seconds is {:?} meters ", 
      elapsed,
      position(elapsed) );
      println!("The AVERAGE velocity is  {:?} m/s",  velocity(0.0, elapsed, true) );  
      println!("The POINT velocity is  {:?} m/s"  ,  velocity(0.0, elapsed, false) );  
      println!("The AVERAGE acceleration is  {:?} m/s^2",  acceleration(0.0, elapsed, true) );  
      println!("The POINT acceleration is  {:?} m/s^2"  ,  acceleration(0.0, elapsed, false) );        
}// main
