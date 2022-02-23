import UIKit

//var greeting = "Hello, playground"
//DispatchQueue.global().sync {
//    sleep(10)
//    print("inside")
//}
//print("outside")

let queue = DispatchQueue.global()
let group = DispatchGroup()


//queue.async(group: group){
//    sleep(3)
//    print("Task 1 end")
//}
//queue.async(group: group) {
//    sleep(1)
//    print("Task 2 end")
//}
//group.wait()
//print("All task done")

group.enter()
queue.async(group: group) {
    sleep(3)
    print("Task 1 end")
    group.leave()
}
group.enter()
queue.async(group: group) {
    sleep(1)
    print("Task 2 end")
    group.leave()
}
group.notify(queue: queue){
    print("All tasks done")
}
print("Continue Execution")



