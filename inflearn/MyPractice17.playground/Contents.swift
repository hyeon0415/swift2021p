import UIKit

// Extension
// 기능 확장 -- 어디서든 사용 가능

// 숫자(Int) 짝수, 홀수

extension Int {
    var oddOrEvent: String {
        if self % 2 == 0 {
            return "짝수"
        }
        return "홀수"
    }
}

//3.oddOrEvent
//4.oddOrEvent
//
//
//20.oddOrEvent


// UIColor
// mainColor1 = xxx
// mainColor2 = xxx
// subColor2 = xxx


// UIColor가 클래스라
extension UIColor {
   class var mainColor1: UIColor {
        UIColor(red: 50/255, green: 70/255, blue: 120/255, alpha: 1)
    }
}

// UIColor가 클래스라 () 붙여야
var button = UIButton()
//button.titleLabel?.textColor = UIColor().mainColor1
button.titleLabel?.textColor = .mainColor1
