import UIKit

//1
/*
 «In the following for loop, what will be the value of sum, and how many iterations will happen?
var sum = 0
for i in 0...5 {
  sum += i
}»

Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 
 ans: 15, 6
 */

//2
/*
 «In the while loop below, how many instances of “a” will there be in aLotOfAs? Hint: aLotOfAs.count tells you how many characters are in the string aLotOfAs.
 var aLotOfAs = ""
 while aLotOfAs.count < 10 {
   aLotOfAs += "a"
 }»

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 
 ans: 9 "a"
 */

//3
/*
 «Consider the following switch statement:
 switch coordinates {
 case let (x, y, z) where x == y && y == z:
   print("x = y = z")
 case (_, _, 0):
   print("On the x/y plane")
 case (_, 0, _):
   print("On the x/z plane")
 case (0, _, _):
   print("On the y/z plane")
 default:
   print("Nothing special")
 }»

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 
 «let coordinates = (1, 5, 0)
    switch output: "On the x/y plane"
 let coordinates = (2, 2, 2)
    switch output: "x = y = z"
 let coordinates = (3, 0, 1)
    switch output: On the x/z plane
 let coordinates = (3, 2, 5)
    switch output: Nothing special
 let coordinates = (0, 2, 4)
    switch output: On the y/z plane

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */

//4 because it always has its borders as values, and even when they are the same it's still one number ro run through

//5,6

for i in 0...10
{
    print(10-i, 0.1 * Double(i))
}
