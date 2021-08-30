import UIKit

struct IceCream {
    var name: String = "basic"
    lazy var ingredients: [String] = ["milk"]
    
    init(name:String)
    {
        self.name = name
    }
    
}
