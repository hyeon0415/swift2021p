import UIKit

// closure
// 함수는 closure의 한가지 타입
// 이름이 없고 주변의 문법을 가볍게 캡쳐
// 함수와 다르게 이름이 없다.

// first class type
// 변수에 할당할 수 있다.
// 인자로 받을수 있다.
// 리턴 할 수 있다.

// completion block
// hogher order func
/*
{ (param) -> return type in
    statement
    ....
}
 */

// example 1: cho simple closure

//let choSimpleClosure = {
//
//}
//choSimpleClosure()

// example 2: 코드블록을 구현한 closure

//let choSimpleClosure = {
//    print("Hello, 클로저, 코로나 하이!")
//}
//choSimpleClosure()

// example 3: 인풋 파라미터를 받는 closure

//let choSimpleClosure: (String) -> Void = { name in
//    print("Hello, 클로저, 코로나 하이! 나의 이름은 \(name) 입니다.")
//}
//choSimpleClosure("코로나가 제일시러")

// example 4: 값을 리턴하는 closure

//let choSimpleClosure: (String) -> String = { name in
//
//    let message = "IOS 개발 만만세, \(name)님 경제적 자유를 얻으실 거에요!"
//    return message
//}
//let result = choSimpleClosure("코로나가 제일시러")
//print(result)

// example 5: closure를 파라미터로 받는 함수 구현

//func someSimpleFunction(choSimpleClosure: () -> Void){
//    print("함수에서 호출이 되었어요")
//}
//
//someSimpleFunction(choSimpleClosure: {
//    print("헬로 코로나 form closure")
//})

//func someSimpleFunction(choSimpleClosure: () -> Void){
//    print("함수에서 호출이 되었어요")
//    choSimpleClosure()
//}
//
//someSimpleFunction(choSimpleClosure: {
//    print("헬로 코로나 form closure")
//})

// example 6: trailing closure

func someSimpleFunction(message: String, choSimpleClosure: () -> Void){
    print("함수에서 호출이 되었어요, 메세지는 \(message)")
    choSimpleClosure()
}

someSimpleFunction(message: "로나로나 메로나, 코로나는 극혐", choSimpleClosure: {
    print("헬로 코로나 form closure")
})

someSimpleFunction(message: "로나로나 메로나, 코로나는 극혐") {
    print("헬로 코로나 form closure")
}
