//: [Previous](@previous)

import UIKit

actor User{
    var score: Int
    var name: String
    func changeScore(_ score:Int){
        self.score = score
    }
   
    init(score:Int,name:String){
        self.score = score
        self.name = name
    }
}
let queue = DispatchQueue(label: "queue")
let queue1 = DispatchQueue(label: "Queue1")
let queue2 = DispatchQueue(label: "Queue1")
let user1 = User(score: 20, name: "Santhosh")
queue1.async {
    Task{
     await user1.changeScore(30)
    print(await user1.score)
    }
}
queue2.async {
    Task{
     await user1.changeScore(22)
    print( await user1.score)
    }
}





