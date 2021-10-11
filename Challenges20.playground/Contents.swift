import UIKit

//1
/*
 «Given this code, write an if statement that shows an error if the user is not yet 21 years old:
 enum FormField {
   case firstName(String)
   case lastName(String)
   case emailAddress(String)
   case age(Int)
 }
 let minimumAge = 21
 let submittedAge = FormField.age(22)»

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */

enum FormField {
  case firstName(String)
  case lastName(String)
  case emailAddress(String)
  case age(Int)
}
let minimumAge = 21
let submittedAge = FormField.age(20)

if case .age(let age) = submittedAge , age < minimumAge {
    print("error ")
}


//2
/*
 «Given this code, find the planets with liquid water using a for loop:
 enum CelestialBody {
   case star
   case planet(liquidWater: Bool)
   case comet
 }

 let telescopeCensus = [
   CelestialBody.star,
   .planet(liquidWater: false),
   .planet(liquidWater: true),
   .planet(liquidWater: true),
   .comet
 ]»

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */

enum CelestialBody {
  case star
  case planet(liquidWater: Bool)
  case comet
}

let telescopeCensus = [
  CelestialBody.star,
  .planet(liquidWater: false),
  .planet(liquidWater: true),
  .planet(liquidWater: true),
  .comet
]

for case .planet(let liq) in telescopeCensus{
    if liq == true{
        print("yea")
    }
}

//3
/*
 «Challenge 3: Find the year
 Given this code, find the albums that were released in 1974 with a for loop:
 let queenAlbums = [
   ("A Night at the Opera", 1974),
   ("Sheer Heart Attack", 1974),
   ("Jazz", 1978),
   ("The Game", 1980)
 ]
 »

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */

let queenAlbums = [
  ("A Night at the Opera", 1974),
  ("Sheer Heart Attack", 1974),
  ("Jazz", 1978),
  ("The Game", 1980)
]


for el in queenAlbums{
    if case let (name , 1974) = el{
        print(name)
    }
}

//4
/*
 «Challenge 4: Where in the world
 Given this code, write a switch statement that will print out whether the monument is located in the northern hemisphere, the southern hemisphere, or on the equator.
 let coordinates = (lat: 37.334890, long: -122.009000)»

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */
let coordinates = (lat: 37.334890, long: -122.009000)
let lat_south_range = -90.0..<0
switch coordinates {
case (lat_south_range , _) :
    print("south")
case (0 , _):
    print("equator")
default:
    print("north")
}
