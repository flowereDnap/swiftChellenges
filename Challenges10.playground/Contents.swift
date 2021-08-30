import UIKit

//1
struct fruit{
    let type:String
}

let truck: [fruit] = [fruit(type: "orange"),fruit(type: "apple"),fruit(type: "pear"),fruit(type: "apple"),fruit(type: "pear"),fruit(type:"orange"),fruit(type: "pear") ]

func fruit_sorter(_ fruits: [fruit]) -> (sorted:[String: Int], total: Int)
{
    var  output:(sorted:[String: Int], total: Int) = ([:], 0)
    
    for fruit in fruits{
        output.sorted[fruit.type , default:0] += 1
        output.total += 1
    }
    
    return output
}

print(fruit_sorter(truck))

//2
struct tshirt{
    var size:(String , Int)
    var color:String
    let material:String
    
    static var price_material_multiplier: [String:Int] = ["Rock":5 , "Paper":3, "scissor":6]
    
    
    
    func get_prise() -> Int
    {
        var cost: Int = 1
        cost *= tshirt.price_material_multiplier[color]!
        
        return cost
    }
    
    
}

//3

struct coord {
    let x:Int
    let y:Int
}

struct ship
{
    let oridgin: coord
    let direction: coord
    let len: Int
    
    func i_gess_they_never_miss_huh (_ coord: coord) -> Bool{
        //returns true if "shot" "hits"
        if (coord.x != 0 && abs(coord.x - oridgin.x) <= len)||(coord.y != 0 && abs(coord.y - oridgin.y) <= len)
        {return true}
        else
        {return false}
    }

}






