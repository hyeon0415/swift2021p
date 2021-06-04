import UIKit

// 1. 성, 이름을 받아서 fullname을 출력하는 함수 만들기


// 2. 1번에서 만든 함수인데, 파라미터 이름을 제거하고 fullname 출력하는 함수 만들기

// 3. 성, 이름을 받아서 fullname return 하는 함수 만들기

func printFullName(firsrtName: String, lastName: String){
    print(" fullname is \(firsrtName) \(lastName)")
}
printFullName(firsrtName: "hyeon", lastName: "yang")

func printFullName(_ firsrtName: String, _ lastName: String){
    print(" fullname is \(firsrtName) \(lastName)")
}
printFullName("hyeon", "yang")

func fullname(firsrtName: String, lastName: String) -> String {
    return "\(firsrtName) \(lastName)"
  }
let name = fullname(firsrtName: "hyeon", lastName: "yang")
name
