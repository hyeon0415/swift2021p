import UIKit

// unicode 범위라인
// 숫자만 입력받을 수 있어햐 한다.

//let inputValue = "0"
//
//if inputValue >= "\u{30}" && inputValue <= "\u{39}" {
//    print("숫자다")
//} else {
//    print("숫자가 아니다")
//}

// 영어만 입력해야 한다.
//"\u{7a}"
//"\u{41}"


// String
// 하나하나 가져오기
let myName = "lee"

//for character in myName {
//    print(character)
//}

//let myName2 = "kim"
//
//let name = myName + myName2

let myLongStr =
"""
hi
hello
welcome
"""

print(myLongStr)

// String화
let isOn = false
isOn.description

let myNumber = 12.33
myNumber.description
String(myNumber).split(separator: ".")

let muNumber2 = "1233원"
muNumber2.dropLast()
