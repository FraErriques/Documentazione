

fn main() {
    struct RowLayout{
        one : i32,
        two : f32,
        three : char
    }
    let mut row_array : [RowLayout;3] = [
        RowLayout{one:0i32,two:0.0f32,three:'0',},
        RowLayout{one:1i32,two:1.0f32,three:'1',},
        RowLayout{one:2i32,two:2.0f32,three:'2',},
    ];
    //-----
    for c in 0..2{
        row_array[c]=RowLayout{one:c as i32,two:c as f32,three:'z'};
    }
    
    //---------------
    println!("uno: {}\ndue: {}\ntre: {}", row_array[0].one,
        row_array[0].two,row_array[0].three  );

    let mut row_array : [[i32;2];2] = [[1,2],[3,4]];
    row_array[0][0]=1;
    row_array[0][1]=2;
    row_array[1][0]=3;
    row_array[1][1]=4;
    let det : i32 = row_array[0][0]*row_array[1][1]-row_array[1][0]*row_array[0][1];
    println!("{:?}", row_array );
    println!("determinant = {}", det);
}