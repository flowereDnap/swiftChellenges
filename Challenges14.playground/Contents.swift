import UIKit

//1
/*
 «Create three simple classes called A, B, and C where C inherits from B and B inherits from A. In each class initializer, call print("I’m <X>!") both before and after super.init(). Create an instance of C called c. What order do you see each print() called in?»
 
 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */
//2
/*
 «Implement deinit for each class. Create your instance c inside of a do { } scope, causing the reference count to go to zero when it exits the scope. Which order do the classes deinitialize?»
 
 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */



class A{
    init() {
        print("I’m A!")
    }
    deinit {
        print("A class deinit")
    }
}

class B:A{
    override init() {
        print("I’m B!")
        super.init()
        print("I’m B!")
    }
    deinit {
        print("B class deinit")
    }
}

class C:B{
    override init() {
        print("I’m C!")
        super.init()
        print("I’m C!")
    }
    deinit {
        print("C class deinit")
    }
}

do{
    var c = C()
}

//3
/*
 «Cast the instance of type C to an instance of type A. Which casting operation do you use and why?»
 
 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */

let c = C()

let c_casted = c as A

//4
/*
 «Create a subclass of StudentAthlete called StudentBaseballPlayer and include properties for position, number, and battingAverage. What are the benefits and drawbacks of subclassing StudentAthlete in this scenario?»
 
 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */
class Student {
    let firstName: String
    let lastName: String
    var grades: [Grade] = []
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func recordGrade(_ grade: Grade) {
        grades.append(grade)
    }
}
struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}
class StudentAthlete: Student {
    var failedClasses: [Grade] = []
    var sports:[String] = []
    override func recordGrade(_ grade: Grade) {
        super.recordGrade(grade)
        
        if grade.letter == "F" {
            failedClasses.append(grade)
        }
    }
    
    var isEligible: Bool {
        failedClasses.count < 3
    }
}
class StudentBaseballPlayer:StudentAthlete{
    var position:Int
    var number:Int
    var battingAverage:Int
    
    init(position:Int , number:Int, battingAverage:Int,firstName: String, lastName: String) {
        self.battingAverage = battingAverage
        self.number = number
        self.position = position
        super.init(firstName: firstName, lastName: lastName)
    }
}
