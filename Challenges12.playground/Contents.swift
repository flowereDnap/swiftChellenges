import UIKit

//1
/*
 «Given the Circle structure below:
 struct Circle {
 
 var radius = 0.0
 
 var area: Double {
 .pi * radius * radius
 }
 
 }
 Write a method that can change an instance’s area by a growth factor. For example, if you call circle.grow(byFactor: 3), the area of the instance will triple.
 »
 
 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */

struct Circle {
    
    var radius = 0.0
    
    var area: Double {
        get{
            .pi * radius * radius
        }
        set (value){
            radius = sqrt(value / .pi)
        }
    }
    
    mutating func grow(byFactor factor:Double){
        area = area * factor
    }
}

//2
/*
 «Rewrite advance() to account for advancing from December 31st to January 1st.
 »
 
 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */

let months: [(month: String,day: Int)] = [( "January",31), ("February",28), ("March",31),
              ("April",30), ("May",31), ("June",30),
              ("July",31), ("August",31), ("September",30),
              ("October",31), ("November",30), ("December",31)]

struct SimpleDate {
    var month: String
    var day: Int
    
    mutating func advance() {
        day += 1
        let index = months.firstIndex(where: {$0.month == month})
        if day > months[index!].day{
            day = 1
            month = months[index!+1].month
        }
    }
}

let arr = [1 ,2]
print(arr[arr.firstIndex(where: {$0 == 2})!+1])

//3
//4
/*
 «It turns out that Int is simply a struct. Add the computed properties isEven and isOdd to Int using an extension.
 »

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */
extension Int{
    func isEven(_ number:Int)->Bool{
        return number%2 == 1
    }
    func isOdd(_ number:Int)->Bool{
        return number%2 == 0
    }
}
//5
/*
 «Add the method primeFactors() to Int. Since this is an expensive operation, this is best left as an actual method.»

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */

extension Int{
    func primeFactors(_ number:Int)->[Int]{
        return [0]
    }
}
