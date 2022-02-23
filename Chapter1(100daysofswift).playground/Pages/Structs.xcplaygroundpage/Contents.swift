//: [Previous](@previous)

import Foundation

/*: Structs*/

struct Car{
    // Private Keyword is used so that the property is not accessible outside the struct
    // static represents only a single copy of property is created for struct and is copied along all the instances of the structs.
    
    private static let Manufacturer = "Honda" //Manufacture property is relation to class not instance of the class
    
/*:Property Observers*/
// Property observers are used to monitor changes in the property and run any operations if necessary
     var Speed: Int{
         
        // willSet block is executed property value is going to change
        willSet{
        // newValue keyword represents the value that is going to be assigned to the property
            
            if(newValue >= 100)
            {
                print("Speed is Too fast")
            }
            
        }
         
     //didSet block is executed after the property value gets changes
     // oldVlaue refers to the property value before it is changed.
         
            didSet{
                print("\(oldValue)kmph is now \(Speed)kmph")
            }
        }
    
    let Time: Int
    

/*:Computed Properties */
//They are computed from the avalaible information. They dont need to be initialised while creating an instance of Struc
    
    
    var Distance: Int{
        Speed*Time
    }
    
// lazy properties are created only When the property is accessed the first time
    
    lazy var color = "blue"
    
//Method: They are generally function of a class or struct
// mutating keyword specifies that it can change the property of a struct or class
    
mutating func changeSpeed(_ speed:Int){
    
// Self refers to the current instance of the struct or class
    
        self.Speed = speed
    }
    
}

//Properties and methods are accessed by dot notaion.
var Car1 = Car(Speed: 120,Time: 2)
Car1.changeSpeed(120)
Car1.changeSpeed(50)

//: [Classes](@next)


