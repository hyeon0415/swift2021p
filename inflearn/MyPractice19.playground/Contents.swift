import UIKit


// generic <Type 내가 정한 임의의 타입>
// 로직 - 반복, 타입 여러가지

// stack
 
//struct IntStack<> {
//    var items = [Int]()
//
//    mutating func push(item: Int) {
//        items.append(item)
//    }
//   mutating func pop() -> Int? {
//    if items.isEmpty {
//        return nil
//    }
//    return items.removeLast()
//    }
//}
//
//var myStack = IntStack()
struct MyStack<MyType> where MyType: Equatable {
    var items = [MyType]()
   
    mutating func push(item: MyType) {
        items.append(item)
    }
   mutating func pop() -> MyType? {
    if items.isEmpty {
        return nil
    }
    return items.removeLast()
    }
}

var myStack = MyStack<String>()
//myStack.push(item: 4)
//myStack.push(item: 5)
//myStack.push(item: 6)
//
//myStack.pop()
//myStack.pop()
//myStack.pop()
//myStack.pop()
myStack.push(item: "a")
myStack.pop()

var myStack2 = MyStack<Int>()
myStack2.push(item: 1)
myStack2.pop()

//var myStack3 = myStack<[String : Any]>()

struct MyInfo: Equatable {
    var name = ""
    var age = ""
}
