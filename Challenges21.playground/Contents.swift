import UIKit

enum myErrors: Error{
    case not_valid_string
    case not_devideble
}


func to_even_int (string:String) throws -> Int  {
    guard let number = Int(string) else {
        throw myErrors.not_valid_string
    }
    return (number - number%2)
    
}

do{
    print(try to_even_int(string: "4.5"))
}catch myErrors.not_valid_string{
    print("bad string")
}

func devision(first:Int ,second:Int) throws -> Int{
    guard let result = first/second else {
        throw myErrors.not_devideble
    }
    return result
}
