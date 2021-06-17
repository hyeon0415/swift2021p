import UIKit

// Collection Types
// 집합 타입

// Array
//var myNames = Array<String>()
//var myAges = [Int]()
//
//myNames.append("kim")
//myNames.append("lee")
//myNames.append("jin")
//
//myNames[2] + " 님"

// 방어코드
// 안전한 코딩 스타일
//let index = 2
//if myNames.count > index {
//   myNames[index]
//}

//myNames.append(contentsOf: ["hi", "hello"])

//myNames = myNames + ["hi"]
//
//if myNames.isEmpty {
//
//}
//
//myNames.insert("hahaha", at: 1)

// 하나하나 요소에 접근하기
//for name in myNames {
//    print(name + "님")
//}
//for (index, name) in myNames.enumerated() {
//    print(index, name)
//}



// Set
//var names = Set<String>()
//names.insert("kim")
//names.insert("min")
//names.insert("lee")  // 같은값 중첩 안됨
//names.insert("lee")
//names

//var sameNames = ["lee", "lee", "kim", "lee"]
// Set(sameNames)

//var names2: Set = ["lee", "kim", "min"]
//names2



var numbers1: Set = [1, 2, 3, 4, 5]

var numbers2: Set = [4, 5, 6, 7, 8]

// 교집합
numbers1.intersection(numbers2)

// 합집합
numbers1.union(numbers2)

// 합집합 - 교집합 (대칭차집합)
numbers1.symmetricDifference(numbers2)

// 여집합
numbers1.subtracting(numbers2)


