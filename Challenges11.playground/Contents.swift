import UIKit

//1
/*
 «Challenge 1: Ice Cream
 Rewrite the IceCream structure below to use default values and lazy initialization:
 struct IceCream {
   let name: String
   let ingredients: [String]
 }
 Use default values for the properties.
 Lazily initialize the ingredients array.»

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */
struct IceCream {
    var name: String = "basic"
    lazy var ingredients: [String] = {
        return ["milk"]
    }()
    
    init(name:String)
    {
        self.name = name
    }
    
}

//2
/*
 «Challenge 2: Car and Fuel Tank
 At the beginning of the chapter, you saw a Car structure. Dive into the inner workings of the car and rewrite the FuelTank structure below with property observer functionality:
 struct FuelTank {
   var level: Double // decimal percentage between 0 and 1
 }
 Add a lowFuel stored property of Boolean type to the structure.
 Flip the lowFuel Boolean when the level drops below 10%.
 Ensure that when the tank fills back up, the lowFuel warning will turn off.
 Set the level to a minimum of 0 or a maximum of 1 if it gets set above or below the expected values.
 Add a FuelTank property to Car.»

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */

struct Car {
    let make: String
    let color: String
    var fuel: FuelTank
}

struct FuelTank {
    var level: Double = 1 {
        didSet{
            if abs(level - 0.5) > 0.5 {
                print ("nope")
                level = oldValue
            }
            if level < 0.1
            {
                lowFuel = true
            }
            if lowFuel && level>0.1
            {
                lowFuel = false
            }
        }
    }
    
    var lowFuel:Bool = false
    {
        didSet{
            if lowFuel == true {
                print ("low fuel")
            }
        }
        
    }
    
    
}

