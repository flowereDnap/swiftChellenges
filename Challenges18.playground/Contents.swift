import UIKit

//1
/*
 «Challenge 1: Singleton pattern
 A singleton is a design pattern that restricts the instantiation of a class to one object.
 Use access modifiers to create a singleton class Logger. This Logger should:
 Provide shared, public, global access to the single Logger object.
 Not be able to be instantiated by consuming code.
 Have a method log() that will print a string to the console.»

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */


class Logger{
    internal static var logger = Logger()
    
    private init(){
    }
    
    private func log(){
        print("log called")
    }
}


//2

/*
 «Declare a generic type Stack. A stack is a LIFO (last-in-first-out) data structure that supports the following operations:
 peek: returns the top element on the stack without removing it. Returns nil if the stack is empty.
 push: adds an element on top of the stack.
 pop: returns and removes the top element on the stack. Returns nil if the stack is empty.
 count: returns the size of the stack.
 Ensure that these operations are the only exposed interface. In other words, additional properties or methods needed to implement the type should not be visible.»

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */


class Stack<Type>{
    private var stack: [Type] = []
    init(){
    }
    
    public func peek ()->Type?{
        return stack.last
    }
    
    public func push(element:Type){
        stack.append(element)
    }
    
    public func pop()->Type?{
        return stack.popLast()
    }
    
    public func count()->Int{
        return stack.count
    }
}

//3
/*
 
 */

let elf = game_charecter_factory.make(ofType: .elf)
let giant = game_charecter_factory.make(ofType: .giant)
let wizard = game_charecter_factory.make(ofType: .wizard)

battle(elf, vs: giant) // Giant defeated!
battle(wizard, vs: giant) // Giant defeated!
battle(wizard, vs: elf) // Elf defeated!
