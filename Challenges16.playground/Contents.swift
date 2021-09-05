import UIKit

//1
/*
 «Pet shop tasks
 Create a collection of protocols for tasks at a pet shop with dogs, cats, fish and birds.
 The pet shop duties include these tasks:
 All pets need to be fed.
 Pets that can fly need to be caged.
 Pets that can swim need to be put in a tank.
 Pets that walk need exercise.
 Tanks and cages need to be cleaned occasionally.
 Create classes or structs for each animal and adopt the appropriate protocols. Feel free to simply use a print() statement for the method implementations.
 Create homogeneous arrays for animals that need to be fed, caged, cleaned, walked, and tanked. Add the appropriate animals to these arrays. The arrays should be declared using the protocol as the element type, for example var caged: [Cageable]
 Write a loop that will perform the proper tasks (such as feed, cage, walk) on each element of each array.»

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */
protocol animal{
    var name:String {get}
    var feeded:Bool {get set}
    func feed(feeded:Bool)
}
protocol flying: animal{
    var caged:Bool {get set}
    var cage_is_clean:Bool {get set}
    func put_in_cage( caged:Bool)
    func clean_cage()
}

protocol swimming: animal{
    var in_tank:Bool {get set}
    var tank_is_clean:Bool {get set}
    func put_in_tank(in_tank:Bool)
    func clean_tank()
}

protocol walking: animal{
    func exercise()
}

class Dog : walking{
    var name: String
    var feeded: Bool
    init(name:String, feeded:Bool) {
        self.name = name
        self.feeded = feeded
    }
    
    func feed( feeded:Bool) {
        if(feeded){
            print("no need to feed")
        }
        else{
            self.feeded = true
            print("now feeded")
        }
    }
    
    func exercise() {
        print("exercises are done!")
    }
}

class Cat : walking{
    var name: String
    var feeded: Bool
    init(name:String, feeded:Bool) {
        self.name = name
        self.feeded = feeded
    }
    
    func feed( feeded:Bool) {
        if(feeded){
            print("no need to feed")
        }
        else{
            self.feeded = true
            print("now feeded")
        }
    }
    
    func exercise() {
        print("exercises are done!")
    }
}

class Fish: swimming{
    var name: String
    var feeded: Bool
    var tank_is_clean: Bool
    var in_tank: Bool
    
    init(name:String, feeded:Bool, in_tank:Bool, tank_is_clean:Bool) {
        self.name = name
        self.feeded = feeded
        self.in_tank = in_tank
        self.tank_is_clean = tank_is_clean
    }
    
    func feed( feeded:Bool) {
        if(feeded){
            print("no need to feed")
        }
        else{
            self.feeded = true
            print("now feeded")
        }
    }
    
    func put_in_tank (in_tank:Bool) {
        if in_tank {
            print("no need")
        }
        else{
            self.in_tank = true
            print("placed in tank")
        }
    }
    func clean_tank() {
        self.tank_is_clean = true
        print("cleaned")
    }
}


class Bird: flying{
    var name: String
    var feeded: Bool
    var cage_is_clean: Bool
    var caged: Bool
    
    init(name:String, feeded:Bool, caged:Bool, cage_is_clean:Bool) {
        self.name = name
        self.feeded = feeded
        self.caged = caged
        self.cage_is_clean = cage_is_clean
    }
    
    func feed( feeded:Bool) {
        if(feeded){
            print("no need to feed")
        }
        else{
            self.feeded = true
            print("now feeded")
        }
    }
    
    func put_in_cage (caged:Bool) {
        if caged {
            print("no need")
        }
        else{
            self.caged = true
            print("placed in cage")
        }
    }
    func clean_cage() {
        self.cage_is_clean = true
        print("cleaned")
    }
}

let bird_one: Bird = Bird(name: "birdy", feeded: false, caged: false, cage_is_clean: true)
let bird_two:Bird = Bird(name: "bob", feeded: false, caged: false, cage_is_clean: true)

let dog_one:Dog = Dog(name: "ross", feeded: true)
var fed: [animal] = [dog_one , bird_one, bird_two]
var caged: [flying] = [bird_one, bird_two]

for animal in fed {
    animal.feed(feeded: animal.feeded)
}

for bird in caged{
    bird.put_in_cage(caged: bird.caged)
}
