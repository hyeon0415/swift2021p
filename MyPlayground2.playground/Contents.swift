import UIKit
import Foundation

// --- While

//while 조건 {
//    code...
//}

//var i = 0
//while i < 10{
//    print(i)
//    i += 1
//}

print("--- While")
var i = 10
while i < 10{
    print(i)
//    if i == 5{
//        break
//    }
    i += 1
}

print("--- Repeat")
i = 10
repeat{
    print(i)
    i += 1
} while i < 10


//while
//조건 > 코드 수행 > 조건 > 코드 수행
//
//repeat while
//코드수행 > 조건 > 코드수행 > 조건


// --- For Loop

let closedRange = 0...10
let halfClosedRange = 0..<10

var sum = 0
for i in halfClosedRange {
    print("---> \(i)")
    sum += i
}
 print("---> total sum: \(sum)")


var sinValue: CGFloat = 0
for i in closedRange{
    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
}

let name = "Jason"
for _ in closedRange {
    print("--> name: \(name)")
}

// 짝수만 프린팅 해보자
for i in closedRange{
    if i % 2 == 0{
        print("---> 짝수: \(i)")
    }
}
// 다른 방법
for i in closedRange where i % 2 == 0 {
    print("---> 짝수: \(i)")
}


// 3만 빼고 출력하고 싶을땐
for i in closedRange{
    if i == 3{
        continue
    }
    print("---> \(i)")
}

// 중첩 .. 추천은 드리진 않음
//for i in closedRange{
  //  for j in closedRange{
      //  print("gugu -> \(i) * \(j) = \(i * j)")
  //  }
//}


// -- Switch
//let num = 10
//
//switch num {
//case 0:
//    print("---> 0입니다. ")
//case 0...10:
//    print("---> 0 10 사이 입니다. ")
//
//case 10:
//    print("---> 10입니다. ")
//default:
//    print("---> 나머지 입니다. ")
//}
//
//let pet = "bird"
//
//switch pet {
//case "dog", "cat", "bird":
//    print("---> 집동물이네요? ")
//default:
//    print("---> 잘 모르겠습니다. ?")
//}

let num = 5
switch num {
case _ where num % 2 == 0:
    print("---> 짝수")
default:
    print("---> 홀수")
}
