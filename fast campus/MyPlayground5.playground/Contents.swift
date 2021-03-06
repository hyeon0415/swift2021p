import UIKit

//오버로드: 함수 이름은 같지만 다른 기능읋 할 때
//func printTotalPrice(price: Int, count: Int){
//    print("Total Price: \(price * count)")
//}
//func printTotalPrice(price: Double, count: Double){
//    print("Total Price: \(price * count)")
//}
//func printTotalPrice(가격: Double, 갯수: Double){
//    print("Total Price: \(가격 * 갯수)")
//}
//
//// in out paramter
//
var value = 3
func incrementAndPrint(_ value: inout Int){
    value += 1
    print(value)
}
incrementAndPrint(&value)


// -- function as a param
func add(_ a: Int, _ b: Int) -> Int{
    return a + b
}
func subtract(_ a: Int, _ b: Int) -> Int{
    return a - b
}

var function = add
function(4, 2)
function = subtract
function(4, 2)

func printResult(_ funtion: (Int, Int) -> Int, _ a: Int, _ b: Int){
    let result = function(a, b)
    print(result)
}
printResult(add, 10, 5)
printResult(subtract, 10, 5)
