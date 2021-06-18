import UIKit

// COntrol Flow (흐름 제어)

// for

//let name = "23467654"

//for char in name {
//   print((Int(String(char)) ?? 0) * 10)
//}

//let names = ["lee", "kim", "min"]
//
//for name in names {
//    print(name + "님")
//}

//let numberOfLegs = ["ant" : 6, "dog" : 4]
//
//for dic in numberOfLegs {
//    print(dic)
//}

//let names = ["kim", "lee", "hen"]
//
//for index in 0..<names.count {
//    print(index)
//}



// while 웬만하면 사용x
// 무한으로 반복문 안에서 실행되는 경우가 있으면 -> 멈춰버림
//var a = 0
//
//while a < 10 {
//    a += 1
//    print("계속 실행")
//}



// Switch
// 조건에 케이스를 만들어서 분기처리

let b = "a"

switch b {
case "a", "b", "c":
    print("a or b or c")
case "d":
    print("d")
default:
    print("other")
}

