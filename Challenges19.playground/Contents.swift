import UIKit
import CoreGraphics
/*
 extension Array {
 subscript(index: Int) -> (String, String)? {
 guard let value = self[index] as? Int else {
 return nil
 }
 */
 extension Array {
    subscript(index: Int, bool: Bool) -> (String, String)? {
        guard let value = self[index] as? Int else {
             return nil
         }
         return nil
     }
 }



//2
/*
 
 */


extension String{
    subscript(index:Int)->Character{
        
        if index >= 0 , let index = self.index(self.startIndex, offsetBy: index, limitedBy: self.endIndex) {
            return self[index]
        }else{
            return " "
        }
    }
}

let s = "abcde"
print(s[6])



//3
/*
 
 */

infix operator **
func **<T:Numeric>(base: T, power: Int)->T{
    var output:T = 1
    if power > 1 {
        for _ in 1...power{
            output = output * base
        }
    }
    return output
}

let exponent = 1
let baseDouble = 2.0
var resultDouble = baseDouble ** exponent
let baseFloat: Float = 2.0
var resultFloat = baseFloat ** exponent
let baseCG: CGFloat = 2.0
var resultCG = baseCG ** exponent

//4

infix operator **=
func **=<T:Numeric>(left:inout T , right: Int){
    left = left ** right
}

