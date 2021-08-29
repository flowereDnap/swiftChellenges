import UIKit

//1
/*
 «Which of the following are valid statements?
 1. let array1 = [Int]()        +
 2. let array2 = []             -
 3. let array3: [String] = []   +
 For the next five statements, array4 has been declared as:
 let array4 = [1, 2, 3]
 4. print(array4[0])    +
 5. print(array4[5])    -
 6. array4[1...2]       +
 7. array4[0] = 4       +
 8. array4.append(4)    +
 For the final five statements, array5 has been declared as:
 var array5 = [1, 2, 3]
 9. array5[0] = array5[1]       +
 10. array5[0...1] = [4, 5]     +
 11. array5[0] = "Six"          -
 12. array5 += 6                -
 13. for item in array5 { print(item) }     +
 »

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 

//2
func removingOnce(_ item: Int, from array: [Int]) -> [Int]
{
    
    guard let index = array.firstIndex(of: item) else {
        return array
    }
    var ret_arr = array
    ret_arr.remove(at: index )
    return ret_arr
}

//3
func removing(_ item: Int, from array: [Int]) -> [Int]
{
    var ret_array = array
    ret_array.removeAll(where: {$0 == item})
    return ret_array
}

//4
func reversed(_ array: [Int]) -> [Int]
{
    var rev_array: [Int] = []
    
    for el in array
    {
        rev_array.insert(el, at: 0)
    }
    return rev_array
}

//5
func middle(_ array: [Int]) -> Int?
{
    let middle_index = Int(array.count/2)
    
    let ans: Int? = array[middle_index]
    return ans
}
 
//6
func minMax(of numbers: [Int]) -> (min: Int, max: Int)?
{
    var ans: (min: Int, max: Int)?
    if numbers.isEmpty{
        return ans
    }
    else{
        ans=(numbers.first!, numbers.first!)
    for num in numbers {
        if num > ans!.max { ans!.max = num}
        if num < ans!.min { ans!.min = num}
        }
    }
    return ans
}
let test: [Int] = []
print(minMax(of:test))
 «1. let dict1: [Int, Int] = [:]
 2. let dict2 = [:]
 3. let dict3: [Int: Int] = [:]»

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
//7
 /*
 «Which of the following are valid statements?
 1. let dict1: [Int, Int] = [:]     -
 2. let dict2 = [:]                 -
 3. let dict3: [Int: Int] = [:]     +
 For the next four statements, use the following dictionary:
 let dict4 = ["One": 1, "Two": 2, "Three": 3]
 4. dict4[1]                -
 5. dict4["One"]            +
 6. dict4["Zero"] = 0       -
 7. dict4[0] = "Zero"       -
 For the next three statements, use the following dictionary:
 var dict5 = ["NY": "New York", "CA": "California"]
 8. dict5["NY"]                 +
 9. dict5["WA"] = "Washington"  +
 10. dict5["CA"] = nil          +
 »

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */
*/


//8
let dict: [String:String] = ["NY": "New York", "CA": "California"]

func longNames (_ dict: [String:String]) -> [String]
{
    var output: [String] = []
    
    for (_ , value) in dict
    {
        var lenth = 0
        for char in value{
            if char != " "
            {
                lenth += 1
            }
        }
        if lenth >= 8
        {
            output.append(value)
        }
    }
    return output
}

print ( longNames(dict))

//9
func merging(_ dict1: [String: String], with dict2: [String: String]) -> [String: String]
{
    var output:[String: String] = [:]
    
    for (key , value) in dict1{
        output[key] = value
    }
    for (key , value) in dict2{
        output[key] = value
    }
    return output
}

//10
