import UIKit

//1

func charCount ( _ string :String)-> [(Character, Int)] {
    var output: [Character:Int] = [:]
    
    for char in string{
        output[char, default: 0] += 1
    }
    
    return output.sorted {
        return $0.value > $1.value
    }
}

print(charCount("ffffkkjlkjo"))

//2
func wordsCount ( _ string :String)-> Int {
    var output: Int = 0
    
    for char in string{
        if char == " "{
            output += 1
        }
    }
    
    return output
}

print("das asdas #sf")

//3
func wordSwap (_ string :String) -> String
{
    var output: String = ""
    var words: [String] = ["", ""]
    var i:Int = 1
    
    for char in string{
        if char.isLetter {
            words[i].append(char)
        }
        else{
            i -= 1
        }
        
    }
    
    output = words[0] + " " + words[1]
    return output
}

//4

//5
func wordsRevers(_ string :String) -> String{
    var output:String = ""
    var word: String = ""
    for char in string{
        
        if char != " "
        {
            word.insert(char, at: word.startIndex)
        }
        else{
            output.append(word + " ")
            word = " "
        }
    }
    
    
    return output
}
