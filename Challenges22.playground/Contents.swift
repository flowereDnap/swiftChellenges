import UIKit

//1
/*
 «Challenge 1: Spaceship
 Given the structures below, make the necessary modifications to make Spaceship codable:
 struct Spaceship {
 var name: String
 var crew: [CrewMember]
 }
 
 struct CrewMember {
 var name: String
 var race: String
 }»`
 
 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */
/*
 
 struct Spaceship:Codable {
 var name: String
 var crew: [CrewMember]
 }
 
 struct CrewMember:Codable {
 var name: String
 var race: String
 }
 
 
 */

//2
/*
 «It appears that the spaceship’s interface is different than that of the outpost on Mars. The Mars outpost expects to get the spaceship’s name as spaceship_name. Make the necessary modifications so that encoding the structure would return the JSON in the correct format.»
 
 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */

struct Spaceship: Codable{
    var name: String
    var crew: [CrewMember]
}

struct CrewMember:Codable {
    var name: String
    var race: String
}
/*
extension Spaceship{
    enum CodingKeys: String, CodingKey {
        case name = "spaceship_name"
        case crew
        case captain
        case officer
    }
}

//3
/*
 «Challenge 3: Write a decoder
 You received a transmission from planet Earth about a new spaceship. Write a custom decoder to convert this JSON into a Spaceship. This is the incoming transmission:
 {"spaceship_name":"USS Enterprise", "captain":{"name":"Spock", "race":"Human"}, "officer":{"name": "Worf", "race":"Klingon"}}
 Hint: There are no ranks in your type, just an array of crewmen, so you’ll need to use different keys for encoding and decoding.»
 
 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */

extension Spaceship: Decodable {
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decode(String.self, forKey: .name)
        crew = try values.decodeIfPresent([CrewMember].self, forKey: .crew) ?? []
        var crewMemb = try values.decodeIfPresent(CrewMember.self, forKey: .captain)
        if let crewMem = crewMemb {
            crew.append(crewMem)
        }
        crewMemb = try values.decodeIfPresent(CrewMember.self, forKey: .officer)
        if let crewMem = crewMemb {
            crew.append(crewMem)
        }
    }
}

let jsonStr = "{\"spaceship_name\":\"USS Enterprise\", \"captain\":{\"name\":\"Spock\", \"race\":\"Human\"}, \"officer\":{\"name\": \"Worf\", \"race\":\"Klingon\"}}"

let inputData = jsonStr.data(using: .utf8)!
let decoder = JSONDecoder()
let ship = try decoder.decode(Spaceship.self, from: inputData)
print(ship)
let ship2 = Spaceship(name: "USS Enterprise", crew: [CrewMember(name: "Spock", race: "Human")])
print(ship2)
 */
//4
/*
 «Challenge 4: Decoding property lists
 You intercepted some weird transmissions from the Klingon, which you can’t decode. Your scientists deduced that these transmissions are encoded with a PropertyListEncoder and that they’re also information about spaceships. Try your luck with decoding this message:
 var klingonSpaceship = Spaceship(name: "IKS NEGH’VAR", crew: [])
 let klingonMessage = try PropertyListEncoder().encode(klingonSpaceship)
 »

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */
do{
var klingonSpaceship = Spaceship(name: "IKS NEGH’VAR", crew: [])
let klingonMessage = try PropertyListEncoder().encode(klingonSpaceship)
let ss = try PropertyListDecoder().decode(Spaceship.self, from: klingonMessage)
print(ss)
}
