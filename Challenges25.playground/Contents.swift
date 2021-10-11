import UIKit


//1
/*
 «
 protocol Item {
   var name: String { get }
   var clearance: Bool { get }
   var msrp: Double { get } // Manufacturer’s Suggested Retail Price
   var totalPrice: Double { get }
 }
 
 Fulfill the following requirements using primarily what you’ve learned about protocol-oriented programming. In other words, minimize the code in your classes, structs or enums.
 Clothes do not have sales tax, but all other items have 7.5% sales tax.
 When on clearance, food items are discounted 50%, clothes are discounted 25% and electronics are discounted 5%.
 Items should implement CustomStringConvertible and return name. Food items should also print their expiration dates.»

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */
protocol Item: CustomStringConvertible {
    var name: String { get }
    var clearance: Bool { get }
    var msrp: Double { get } // Manufacturer’s Suggested Retail Price
    var expiration_date: Date {get}
    
}

extension Item{
    var totalPrice: Double {
        
        var output = msrp
        switch name{
        case "clothes":
            if clearance{
                output *= (1 - 0.25)
            }
        case "food":
            if clearance{
                output *= (1 - 0.5)
            }
            output *= (1 - 0.075)
        case "electronics":
            if clearance{
                output *= (1 - 0.05)
            }
            output *= (1 - 0.075)
        default:
            break
        }
        return output
    }
}

extension Item
{
    var description: String {
        if name != "food"{
            return name
        }
        else{
            return name + " \(expiration_date)"
        }
    }
    
}


struct my_food_item: Item{
    let name = "food"
    let clearance: Bool = false
    let msrp: Double = 3.5
    let expiration_date: Date = .now
}
let banana = my_food_item()

print(banana)


//2

/*
 «Write a protocol extension on Sequence named double() that only applies to sequences of numeric elements. Make it return an array where each element is twice the element in the sequence. Test your implementation on an array of Int and an array of Double, then see if you can try it on an array of String.
 Hints:
 Numeric values implement the protocol Numeric.
 Your method signature should be double() -> [Element]. The type [Element] is an array of whatever type the Sequence holds, such as String or Int.»

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */

extension Sequence where Element:Numeric{
    func double() -> [Element]{
        var new_seq: [Element] = []
        for el in self{
            new_seq.append(el*2)
        }
        return new_seq
    }
}

let seq = [1.1, 2.2, 5]

print(seq.double())
