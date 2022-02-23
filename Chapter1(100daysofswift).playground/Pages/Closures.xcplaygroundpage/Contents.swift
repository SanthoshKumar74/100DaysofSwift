//: [Previous](@previous)

import Foundation



//:Closures with parameters
// Closures are unnamed functions which can even be saved inside a variable to be used elsewhere
let Greeting = { (name:String) in
    print("Hi \(name)")
}
Greeting("Santhosh")


//:Closure with parameters and return type

let Greetings = { (name:String) -> String in
    return "Hi \(name)"
}
let greet = Greetings("Santhosh")



//: Closures passed as parameters


func tempChange(temp: Double, convert:(_ t:Double) -> Double)
{
    print("\(temp)deg is equal to \(convert(temp))kelvin")
}

//: when closure is last parameter in the list we can use trailing closure

// in keyword is used to separe parameter list and body of func in a trailing closure

tempChange(temp: 235.3) { t in
    t+273
}
//: [Struct](@next)
