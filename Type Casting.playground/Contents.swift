//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let label = UILabel() as UIView

class Human {
    func introduce() {
        print("Hi, I'm a human")
    }
}

class Korean: Human{
    func singGangNamStyle() {
        print("Oppa Gangam Style")
    }
}

class Japanese: Human {
    func doNinja() {
        print("Shhhh...")
    }
}

let firdaus = Korean()
firdaus.introduce()
firdaus.singGangNamStyle()

//firdaus.doNinja()


var name = "Bob" as Any
var number = 20 as Any
var anyArray = [name, number]


// Force Downcast
let newValue = anyArray[0] as! String

// Safe Downcast (implicit)
let newNewValue = anyArray[0] as? Int


// Type casting in practice

let shion = Japanese()
let lee = Korean()
let kenji = Japanese()
let park = Korean()


# Grouping
let humans: [Human] = [shion as Human, lee as Human, kenji as Human, park as Human]

let humans: [Human] = [shion, lee, kenji, park]

for human in humans {
    if let korean = human as? Korean {
        korean.singGangNamStyle()
    }
    
    if let japanese = human as? Japanese {
        japanese.doNinja()
    }
}
