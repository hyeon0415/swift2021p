import UIKit

// Type Annotations
var str = "Hello, playground"
var myAge = 0


// type지정 필요하면 쓰기
var screenHeight: Float = 560

// type다르면 에러
var sum = myAge + Int(screenHeight)

sum


// Booleans

var isOpen = false
isOpen

// 앞!는 반대를 나타냄. (false면..)
if isOpen {
    print("이것이 진짜")
} else {
    print("이것은 가짜")
}


// Tuple (짝, 쌍)

var topTitle = ("메인화면", "mainIcon.png")

topTitle.0
topTitle.1

// http status code
var httpError = (statusCode: 404, description: "Page not found")

httpError.statusCode
httpError.description
