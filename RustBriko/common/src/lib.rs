pub mod other;

pub fn common_signature() -> String {
 let hello = String::from("Common::common_signature() call.");
 return hello;
}

/*  multiline comment
#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_works() {
        let result = add(2, 2);
        assert_eq!(result, 4);
    }
}
*/
