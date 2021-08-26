import UIKit

//1
let myAge = 19
var dogs: Int = 1

dogs += 1

//2
var age: Int = 16
print(age)
age = 30
print(age)

//3
let x: Int = 46
let y: Int = 10

let answer1: Int = (x * 100) + y
let answer2: Int = (x * 100) + (y * 100)
let answer3: Int = (x * 100) + (y / 10)

//4
8 - 4 * 2 + 6 / 3 * 4
((((((((((8))))))))) - (4 * 2)) + ((6 / 3) * 4)

//5
let rating1 = 1.0,
    rating2 = 2.0,
    rating3 = 3.0

let avarage = (rating3 + rating1 + rating2) / 3

//6
let current: Double = 3
let voltage: Double = 3

let power: Double = current * voltage

//7
let resistance = power / pow(current, 2)

//8
let randomNumber = arc4random()
let diceRoll = randomNumber % 6 + 1

//9
let a: Double = 1,
    b: Double = 2,
    c: Double = 1

let root1: Double = (-b + sqrt(pow(b ,2) - 4*a*c)) / (2*a),
    root2: Double = (-b - sqrt(pow(b ,2) - 4*a*c)) / (2*a)
print(root1, root2)

