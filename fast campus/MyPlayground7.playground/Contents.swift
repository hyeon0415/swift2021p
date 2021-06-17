import UIKit

// array -- 여러 요소를 한 통에 담고싶을때 사용 (같은 요소끼리만 담을 수 있음)
// 순서가 있는 아이템, 아이템의 순서를 알면 유용할 때

var evenNumbers: [Int] = [2, 4, 6, 8]

evenNumbers.append(10)
evenNumbers += [12, 14, 16]

evenNumbers.append(contentsOf: [18, 20])


//let isEmpty = evenNumbers.isEmpty   --- 중요!!

//중요!!
evenNumbers.count

print(evenNumbers.first)

//evenNumbers = []
let firstItem = evenNumbers.first

if let firstElement = evenNumbers.first{
    print("---> first time is :\(firstElement)")
}


evenNumbers.min()
evenNumbers.max()

//중요!!!
var numberOneItem = evenNumbers[0]
var numberTwoItem = evenNumbers[1]
var numberTenItem = evenNumbers[9]

//rangea 이용해 가져오기
let firstThree = evenNumbers[0...2]
evenNumbers

evenNumbers.contains(4)
evenNumbers.contains(3)

evenNumbers.insert(0, at: 0)
evenNumbers

//evenNumbers.removeAll()
evenNumbers.remove(at: 0)
evenNumbers

evenNumbers[0...2] = [-2, 0, 2]
evenNumbers


//evenNumbers.swapAt(0, 9)

//for num in evenNumbers{
//    print(num)
//}

//중요!!!
for (index, num) in evenNumbers.enumerated(){
    print("idx: \(index), value: \(num)")
}

let firstThreeRemoved = evenNumbers.dropFirst(3)
evenNumbers

let lastRemoved = evenNumbers.dropLast()
lastRemoved

let firstThree = evenNumbers.prefix(3)
firstThree

let lastThree = evenNumbers.suffix(3)
lastThree

evenNumbers
