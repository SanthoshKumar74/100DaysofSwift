//: [Previous](@previous)

import Foundation
enum Season: CaseIterable{
    case summer
    case winter
    case autumn
    case spring
}

for season in Season.allCases{
    print("\(season)")
}
/*:Enums with associated Values*/
// Associated values provides additional information about the enum case.
enum Employees{
    case santhosh(employeeid: Int, designation: String)
    case Maheshwaran(employeeid: Int, designation: String)
    case sunil(employeeid: Int, Designation: String)
}

/*:Enum with Switch*/

let employee = Employees.santhosh(employeeid: 085, designation: "Junior IOS Developer")

switch employee {
//Case let allows us to extract associatied values of enum cases
case let .santhosh(employeeid, designation):   //employeeid and designation are local variables used to store associated values of enums
    print("Employeeid: \(employeeid), Designation: \(designation) ")
default:
    print("not Found")
}

/*:Enums with raw values*/
// raw values specified are stored in enum cases instead of a random 

enum Days: Int{
    case monday = 1, tuesday,wednesday,thursday,friday,saturday,sunday
}
