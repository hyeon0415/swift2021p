import UIKit

// array -- 여러 요소를 한 통에 담고싶을때 사용 (같은 요소끼리만 담을 수 있음)
// 순서가 있는 아이템, 아이템의 순서를 알면 유용할 때

var evenNumbers: [Int] = [2, 4, 6, 8]

evenNumbers.append(10)
evenNumbers += [12, 14, 16]

evenNumbers.append(contentsOf: [18, 20])


//let isEmpty = evenNumbers.isEmpty

evenNumbers.count

print(evenNumbers.first)

//evenNumbers = []
let firstItem = evenNumbers.first

if let firstElement = evenNumbers.first{
    print("---> first time is :\(firstElement)")
}


evenNumbers.min()
evenNumbers.max()


var numberOneItem = evenNumbers[0]
var numberTwoItem = evenNumbers[1]
var numberTenItem = evenNumbers[9]


