import UIKit

//1 in this piece of code variable "lastNme exists only in if loop


/*
«let firstName = "Matt"

if firstName == "Matt" {
  let lastName = "Galloway"
} else if firstName == "Ray" {
  let lastName = "Wenderlich"
}
let fullName = firstName + " " + lastName»

Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books. */

//2 true false true true

/* «let answer = true && true
 let answer = false || false
 let answer = (true && 1 != 2) || (4 > 3 && 100 < 1)
 let answer = ((10 / 2) > 3) && ((10 % 2) == 0)»

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books. */

//3

let currentPosition = 3
let diceRoll = 3

var nextPosition = currentPosition+diceRoll
switch nextPosition
{
case 3:
    nextPosition = 15
case 7:
    nextPosition = 12
case 11:
    nextPosition = 2
case 17:
    nextPosition = 9
default:
    break
}
nextPosition

//4

let month: String = "february"
let year: Int = 2000

let feb_days: Int
if year%4==0 && !(year%100==0)
    {feb_days = 29}
else
    {feb_days = 28}

let Monthes = [
    (month: "january", day: 31),
    (month:"february", day: feb_days),
    (month:"march", day: 31),
    (month:"april", day: 31),
   (month:"may", day: 31),
   (month:"june", day: 31),
   (month:"july", day: 31),
   (month:"august", day: 31),
   (month:"september", day: 31),
   (month:"october", day: 31),
   (month:"november", day: 31),
   (month:"december", day: 31)
]

var answer: Int = 0
for tuple in Monthes{
    print( tuple.month,month, tuple.month == month )
    if (tuple.month == month)
    {answer = tuple.day
        print(tuple.day)
        break
    }}
print(answer)

//5

var number: Int = 1000
var power: Int = 0
while (Int(pow(2, Double(power))) < number)
{ power+=1}
print(power)

//6
number = 6
var triang_num: Int = 0
for i in 0...number
{
    triang_num += i
}
triang_num

//7
var first_num: Int = 1
var second_num: Int = 1
number = 6

for _ in 1...(number-2)
{
    let step_helper = second_num
    second_num += first_num
    first_num = step_helper
}
print(second_num)

//8
number = 1

for i in 0...12
{
    print(number*i)
}

//9
number = 7

for i in 1...Int(number/2)
{if( i != number - i)
    {print( number - i,i)
        print( i , number - i)}
else
{print( i , number - i)}
    }
