import UIKit

//1
/*
 «Imagine you’re writing a movie-viewing app in Swift. Users can create lists of movies and share those lists with other users. Create a User and a List class that uses reference semantics to help maintain lists between users.
 User: Has a method addList(_:) that adds the given list to a dictionary of List objects (using the name as a key), and list(forName:) -> List? that returns the List for the provided name.
 List: Contains a name and an array of movie titles. A print method will print all the movies in the list.
 Create jane and john users and have them create and share lists. Have both jane and john modify the same list and call print from both users. Are all the changes reflected?
 What happens when you implement the same with structs? What problems do you run into?»

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */

class User{
    var lists: [String:list] = [:]
    var Name: String
    func addList(_ list: list){
        self.lists[list.list_name] = list
    }
    func list(forName name:String) -> list?{
        return self.lists[name]
    }
    init(Name: String) {
        self.Name = Name
    }
}

class list{
    var list_name:String
    var movie_titles:[String] = []
    init( list_name:String){
        self.list_name = list_name
    }
    init( list_name:String , movie_titles:[String]){
        self.list_name = list_name
        self.movie_titles = movie_titles
    }
    
    func print(){
        for movie in self.movie_titles{
            Swift.print(movie)
        }
    }
}

var john = User(Name: "john")
var jane = User(Name: "jane")

john.addList(list(list_name: "fun", movie_titles: ["galaxy strangers", "bob and ross"]))
jane.addList(john.list(forName: "fun")!)

john.list(forName: "fun")!.movie_titles.append("jack the killer")

jane.list(forName: "fun")!.print()


//2
/*
 «Your challenge here is to build a set of objects to support a T-shirt store. Decide if each object should be a class or a struct, and why.
 TShirt: Represents a shirt style you can buy. Each TShirt has a size, color, price, and an optional image on the front.
 User: A registered user of the t-shirt store app. A user has a name, email, and a ShoppingCart (see below).
 Address: Represents a shipping address and contains the name, street, city, and zip code.
 ShoppingCart: Holds a current order, which is composed of an array of TShirt that the User wants to buy, as well as a method to calculate the total cost. Additionally, there is an Address that represents where the order will be shipped.»

 Отрывок из книги: By Ray Fix. «Swift Apprentice». Apple Books.
 */

struct adress{
    var name:String
    var street:String
    var city:String
    var zip_code:String
}

struct tshirt{
    var size:Int = 0
    var color:String = ""
    var price:Double = 0
    var image:String = "
}

class user{
    var name:String
    var email:String
    var ShoppingCart:ShoppingCart
    
    init(name:String , email:String, ShoppingCart:ShoppingCart){
        self.name = name
        self.email = email
        self.ShoppingCart = ShoppingCart
    }
}

class ShoppingCart{
    var adress:adress
    var tshirts: [tshirt]
    
    init(adress:adress , tshirts:[tshirt]){
        self.adress = adress
        self.tshirts = tshirts
    }
    
    func total_price() -> Double{
        var sum = 0.0
        for tshirt in self.tshirts{
            sum += tshirt.price
        }
        return sum
    }
}
