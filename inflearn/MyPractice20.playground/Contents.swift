import UIKit

// Higher order function
// 고차함수

let names = ["kim", "lee", "min", "john"]

// map -> 원하는 스타일로 변경하지만 길이는 같다
//let names2 = names.map { name  in
//    name + "님"
//}
let names2 = names.map { $0 + "님"
}

names2

let names3 = names.map{name in
    name.count
}
let names4 = names.map{name in
    name.count > 3
}


// filter -> 거른다.
let filterNamse = names.filter { (name) -> Bool in
    name.count > 3
}
filterNamse

// reduce 하나로 뭉친다. 통합한다. + -
//let sumName = names.reduce("aaaa") { (first, second) in
//   return first + second
//}
let sumName = names.reduce("aaaa") {$0 + $1}

let numberArr = [1, 2, 3, 4, 5, nil, 6, nil, 8]
let sumNum = numberArr.reduce(0) { $0 + ($1 ?? 0)}
sumNum


// compactMap - nil을 없앤다.
let numbers = numberArr.compactMap { (num)  in
    return num
}
numbers

// flatmap - 어레이 모음을 하나로 쭉 꺼내기
let numbers2 = [[1,2,3], [4,5,6]]
let flatNum = numbers2.flatMap { $0 }
flatNum




