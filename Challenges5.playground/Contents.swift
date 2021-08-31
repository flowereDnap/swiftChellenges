import UIKit

//1 difference is in including or not the border of the range
/*
 «for index in stride(from: 10, to: 22, by: 4) {
   print(index)
 }
 // prints 10, 14, 18

 for index in stride(from: 10, through: 22, by: 4) {
   print(index)
 }
 // prints 10, 14, 18, and 22
 What is the difference between the two stride function overloads?»

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */

for index in stride(from: 10, through: 9, by: -0.1) {
  print(index)
}

//2
func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool
{
    if number % divisor == 0
    {return true}
    else
    {return false}
}

func isPrime(_ number: Int) -> Bool
    {
    if number == 2 || number == 3
    {return true}
    
    for i in 2...Int(sqrt(Double(number)))
        {
            if isNumberDivisible(number, by: i)
            {
                return false
            }
        }
        return true
    }
isPrime(2)
isPrime(6)
isPrime(13)
isPrime(8893)

//3
func fibonacci(_ number: Int) -> Int
{
    if number < 0
    {return 0}
    
    if number == 1 || number == 2
    {return 1}
    else{
     return fibonacci(number-1) + fibonacci(number - 2)
    }
}
fibonacci(0)  // = 0
fibonacci(2)  // = 1
fibonacci(3)  // = 2
fibonacci(4)  // = 3
fibonacci(5)  // = 5
fibonacci(10) // = 55


