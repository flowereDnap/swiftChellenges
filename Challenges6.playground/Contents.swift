import UIKit

//1
/*
 «Challenge 1: You be the compiler
 Which of the following are valid statements?
 var name: String? = "Ray"          +
 var age: Int = nil                 -
 let distance: Float = 26.7         +
 var middleName: String? = nil»     +

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */

//2
func divideIfWhole(_ number: Int, by divider: Int) -> Int?
    {
    if number%divider == 0
        {return Int(number / divider)}
    else
        {return nil}
}

let number = 6

if let res = divideIfWhole(number,by: 4)
{
    print("Yep, it divides \(res) times.")
}
else
{
    print("Not divisible :[.")
}

//3
let res = divideIfWhole(number,by: 4) ?? 0
print( res)

//4
let Number: Int??? = 10

print( Number!!!)

