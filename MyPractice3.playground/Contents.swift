import UIKit


// optionals

// 값이 있을수도 없을수도 있다.

// 값이 있다.

// 값이 없다. -> nil

// 0 -> 다쓴 상태인 값, 값이 없는건 아님

var myAge: Int? = 0
myAge = nil

// 값이 없는 상태 체크 -> 틀린 로직 (swift 언어 스펙)
if myAge == 0 {
    // alert - 나이를 입력해주세요
}

if myAge == nil {
    // alert - 나이를 입력해주세요
}

var myName: String? = nil

if myName == "" {
    // 이름을 입력해주세요
}

// 값이 없는 상태 체크
if myName == nil {
    // 이름값이 없음
}


// 옵셔널은 그냥 사용할 수 없는 경우가 많이 있음

var a: Int? = 20
var b: Int?

// unwrap
// Int? -> Int
// String? -> String

// coalesce
//var c = (a ?? 0) + (b ?? 0)

// force unwrap -> 강제로 변경한다
// 주의사항: 값이 무주건 있다고 변형하겠다. 확신이 있을때만 사용하기
//var d = a! + b!


// Unwraping
// if Statements

//if a != nil {
//    print(a!)
//}

//// if let  값이 있으면 unwrap해서 값 받아와라 값이 없어도 일부는 실행할 필요가 있을 때 
//// if var
//if var hasNumber = a {
//    hasNumber = hasNumber * 2
//    print(hasNumber)
//}

// guard let  값이 없을때 밑에를 전혀 실행할 필요가 없을 때
// guard var
func textFunc(){
    guard var hasNumber = a else {
            return
        }
    hasNumber = hasNumber * 2
    print(hasNumber)
    print("end")
}





textFunc()
