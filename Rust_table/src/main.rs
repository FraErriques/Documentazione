

fn main() {
    /*********************************************************
    last test held on machine ITBZOW1069 on 2023.December.22
    last test held on machine ITBZOW1069 on 2024.January.10
    last test held on machine ITBZOW1069 on 2024.January.19 after vsCode update.
    last test held on machine ITBZOW1069 on 2024.January.25 
    last test held on machine ITBZOW1069 on 2024.February.06  on vsCode update to 1.86.0
     ********************************************************/

    // this is a typedef of a row-layout of a  db-table. First wrote on July2023 in Marina di Grosseto.
    /* the syntax is :
        struct typeName{
            fieldName : typeName,
            ..
            fieldName : typeName
        } no semicolon at endOfStruct
     */
    struct RowLayout{
        one : i32,
        two : f32,
        three : char
    }

    /*
     this is an instance of an Array of that "RowLayout" struct, which represents the actual row-layout;
     fixed row cardinality: three rows; for variable row-cardinality use the library class "Vector".
     */
    let mut row_array : [RowLayout;3] = [
        RowLayout{one:0i32,two:0.0f32,three:'0',},
        RowLayout{one:1i32,two:1.0f32,three:'1',},
        RowLayout{one:2i32,two:2.0f32,three:'2',},
    ];

    //-----this is an initialization loop:
    for c in 0..2{
        row_array[c]=RowLayout{one:c as i32,two:c as f32,three:'z'};
        /* NB. the syntax construct is: 
        array_instance[record_index]=StructTypeName{fieldName_1:value [as cast],..,fieldName_n:value [as cast]};
        so the cast is performed via "structFieldName:variableAssigned as typeName(intended to cast to)"
        outside the Struct context, the general case is:
        leftValueName:rightValueAssigned_name as typeName(intended to cast to)"
        */
    }
    
    //---------------
    // macro : println!(" text {} testo {} ", field, otherField) //NB. each {} is a placeholder for a field.
    // syntax: array_instance[record_index].fieldName
    println!(" uno: {}\n due: {}\n tre: {}"
        , row_array[0].one
        , row_array[0].two
        , row_array[0].three  );

    // declaration and instance of a Matrix:
    // syntax :
    // let mut matrix_instance_name : [[typedef Row;cardinality of elements in Row,i.e. #columns]; #Rows]=init..;
    // NB. for variable cardinality use the "Vector" data-type.
    let mut row_array : [[i32;2];2] = [[1,2],[3,4]];
    row_array[0][0]=1;
    row_array[0][1]=2;
    row_array[1][0]=3;
    row_array[1][1]=4;

    let det : i32 = row_array[0][0]*row_array[1][1]-row_array[1][0]*row_array[0][1];
    //NB. this syntax println!("{:?}", row_array ); prints the whole array content.
    // the print-placeholder for a scalar type is {} while for a vector-type it's {:?}
    println!("{:?}", row_array );
    println!("determinant = {}", det);
}
