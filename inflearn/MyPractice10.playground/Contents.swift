import UIKit

// Closure

// func 과 유사
// closure 는 이름이 없음
// func
//func myScore(a: Int) -> String {
//    return "\(a)점"
//}
//let score = myScore
//score(50)
//
//// closure
//let myScore2 = { (a: Int) -> String in
//    return "\(a)점"
//}

//myScore2(20)

// 축약 (생략) 1줄일 경우 리턴 생략
//let myScore3 = { (a: Int) -> String in
//     "\(a)점"
//}
//
//
//let myScore4 = { (a: Int) in
//     "\(a)점"
//}
//
//let myScore5: (Int, Int) -> String = { (a, b) in
//    "\(a + b)점"
//}
//
//let myScore6: (Int, Int) -> String = {
//    "\($0 + $1)점"
//}
//
//
//myScore5(200, 200)


// 조건 -> 찾는다 -> 특정한 글자가 포함된 것을 찾는다.
// 조건 -> 찾는다 -> 입력한 글자로 시작하는 첫글자를 찾는다.
// contains = ()에 있는 텍스트가 들어가면 true 아니면 false
// .description = string으로 바꿔줌

let names = ["apple", "air", "brown", "red", "orange", "blue", "candy"]

let containsSomeText: (String, String) -> Bool = { name, find in
    if name.contains(find) {
        return true
}
    return false
}

let isStartSomeText: (String, String) -> Bool = { name, find in
    if name.first?.description == find {
        return true
    }
    return false
}



func find(findString: String, condition: (String, String) -> Bool) -> [String] {
    var newNames = [String]()
    
    for name in names {
      if  condition(name, findString) {
            newNames.append(name)
        }
    }
    return newNames
}
find(findString: "a", condition: isStartSomeText)






func someFind(find: String) -> [String] {
    var newNames = [String]()
    
    for name in names {
        if name.contains(find) {
            newNames.append(name)
        }
    }
    return newNames
}

someFind(find: "a")
