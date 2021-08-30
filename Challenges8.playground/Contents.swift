import UIKit

//1
func repeatTask(times: Int, task: () -> Void){
    for _ in 1...times
    {
        task()
    }
}
let testClosure = {() -> Void in print("Hi")}
repeatTask(times: 10, task: testClosure)

//2
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

let fib_closure = { (a: Int)->Int in fibonacci(a)}
let sq_closure = {(a:Int)->Int in a*a}

func mathSum(length: Int, series: (Int) -> Int) -> Int
{
    var output: Int = 0
    for i in 1...length{
        output += series(i)
    }
    return output
}

mathSum(length: 10, series: fib_closure)

//3
let appRatings = [
  "Calendar Pro": [1, 5, 5, 4, 2, 1, 5, 4],
  "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
  "Socialise": [2, 1, 2, 2, 1, 2, 4, 2]
]

var avaregeRatings: [String:Double] = [:]
appRatings.forEach{(key , list) -> ()
    in avaregeRatings[key] = Double(list.reduce(0){$0 + $1}) / Double(list.count)}
print(avaregeRatings)
print(avaregeRatings.filter{ (key , value) -> Bool
    in
    value>3
})

