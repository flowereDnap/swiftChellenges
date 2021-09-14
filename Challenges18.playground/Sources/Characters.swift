import Foundation

enum game_character_name{
    case elf
    case wizard
    case giant
}

protocol game_character{
    
    var name:String {get}
    var atack_points:Int {get set}
    var HP_points:Int{get set}
}

class elf: game_character {
    var name:String
    var atack_points:Int
    var HP_points:Int

    init(name: String){
        self.HP_points = 3
        self.atack_points = 10
        self.name = name
    }
}

class wizard: game_character {
    var name:String
    var atack_points:Int
    var HP_points:Int

    init(name: String){
        self.HP_points = 5
        self.atack_points = 5
        self.name = name
    }
}

class giant: game_character {
    var name:String
    var atack_points:Int
    var HP_points:Int

    init(name: String){
        self.HP_points = 10
        self.atack_points = 3
        self.name = name
    }
}

struct game_character_factory {
    internal static func make(ofType type:game_character_name,name: String)->game_character{
        var hero: game_character
        switch type {
        case .elf:
            hero = elf(name:name)
        case .wizard:
            hero = wizard(name:name)
        case .giant:
            hero = giant(name:name)
        }
        
        return hero
    }
}

internal func battle(first: game_character,vs second:  game_character){
    print("\(first.name), \(type(of:first)) is fighting with \(second.name), \(type(of:second))")
    
    var Hp_1 = first.HP_points
    var Hp_2 = second.HP_points
    
    while true{
        Hp_2 -= first.atack_points
        if second.HP_points<=0 {
            print("\(first.name) wins")
            break
        }
        Hp_1 -= second.atack_points
        if first.HP_points<=0 {
            print("\(second.name) wins")
            break
        }
    }
    
}
