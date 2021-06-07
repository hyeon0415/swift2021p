import UIKit

// set
//중복이 없는 유니크한 아이템, 순서가 상관 없을때

//var someArray: Array<Int> = [1, 2, 3, 1]
//var someSet: Set<Int> = [1, 2, 3, 1, 2]
//
//
//someSet.isEmpty
//someSet.count
//
//someSet.contains(4)
//someSet.contains(1)
//
//someSet.insert(5)
//someSet
//
//someSet.remove(1)
//someSet
//
//someArray.count


// closure -- 이름이 없는 메소드

var multiplyClosure:(Int, Int) -> Int = { a, b in
    return  a * b }

let result = multiplyClosure(4,2)

func operateTwoNum(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int{
    let result = operation(a, b)
    return result
}

operateTwoNum(a: 4, b: 2, operation: multiplyClosure)

var addClosure: (Int, Int) -> Int = { a, b in
    return a + b
}
operateTwoNum(a: 4, b: 2, operation: addClosure)

// 즉흥적으로 만들기
operateTwoNum(a: 4, b: 2) { a, b in
    return a / b
}


