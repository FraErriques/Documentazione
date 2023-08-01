
fn add(x: i32, y: i32) -> i32 {
    x + y
}

fn caller() {
let mut x = add(5,7);

type Binop = fn(i32, i32) -> i32;// typedef of a func-pointer
let bo: Binop = add;// assignement of a func-pointer
x = bo(5,7);
}