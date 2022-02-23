//: [Previous](@previous)

import Foundation
/*: Class*/
// Class and structs are similar except classes are inheritable

class Programmer{
    let name: String
// Unlike Structs Classes recquire initialisers
    
    init(_ name: String){
        self.name = name
    }
    
    
    func writeProgram()
    {
        print("I am a programmer")
    }
    
}

// Final keyword prohibits any Class from subclassing it.

/*:Protocols*/
// Protocols provides necessary properties and method in which a class should have.

protocol IOSdev{
// Classes conforming to IOSdev protocols should have the following methods and properties
    var language: String { get set}
    func developIos()
    func learnNew()
}


protocol androiddev
{
    var language: String { get set}
    func developandroid()
}

/*:Extension*/
// Extension let us add new functionality to existing Class or struct or protocols
// Extension of protocols allows default behaviour for methods

extension IOSdev{
//We can add method definition for a protocol inside an extension.
// Now classes confirming to IOSdev protocol need not have separate definition for learNew() method. They can use default behaviour here.
    
    
    func learnNew()
    {
        print("Learns New things Everyday")
    }
}


// Conforming to protocol androiddev

// AndroidDev is subclassing from Programmer. AndroidDev instances can use parent class properties and methods.

final class AndroidDev: Programmer,androiddev{
    
    var language : String
    init(name: String, lang: String){
        self.language = lang
        super.init(name)
    }
//We can override methods of parent Class using override keyword
    
    override func writeProgram(){
        print("I am a \(self.language) Programmer")
    }
    func developandroid(){
        print("\(self.name) develops android Apps using \(self.language)")
    }
}

// Conforming to protocol IOSdev
// Subclassing from Programmer

final class IOSDev:Programmer, IOSdev{  // LearnNew() is not Implmented but still conforms to IOSdev protocol
    var language: String
    init(name: String, lang: String){
        self.language = lang
        super.init(name)
    }
    override func writeProgram(){
        print("I am a \(self.language) Programmer")
    }
    func developIos()
    {
        print("\(self.name) developes Ios Apps using \(self.language)")
    }
}



let person = IOSDev(name:"Santhosh", lang: "Swift")  // IOSdev has access to name property which is a property of parent(Programmer) Class
person.writeProgram()
person.developIos()
person.learnNew()

//: [Optionals](@next)
