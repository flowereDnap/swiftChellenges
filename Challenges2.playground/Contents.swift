import UIKit

//1
let coordinates = (2,3)

//2
let namedCoordinate = ( row: 2 , column: 3)

//3, the only valid:
let string: String = "Dog"

//4,
let tuple = (day: 15, month: 8, year: 2015)
let day = tuple.day //day, not Day

//5, attempt to change immutable constant
/* «let name = "Matt"
name += " Galloway»

Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books. */

//6, value type is Integer
/* «let tuple = (100, 1.5, 10)
let value = tuple.1»

Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books. */

//7, value of "month" is 8
/* «let tuple = (day: 15, month: 8, year: 2015)
let month = tuple.month»

Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books. */

//8, summary value is "10 multiplied by 5 equals 50"
/* «let number = 10
let multiplier = 5
let summary = "\(number) multiplied by \(multiplier) equals \(number * multiplier)»

Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books. */

//9, 116 if cast to one type

//10 different number of digits (?)
