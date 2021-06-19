import UIKit

// properties

class MyInfo {
    // stored property (저장)
    var name = ""
    var age = 0
    
    // lazy stored properties 사용하려 할 때 메모리에 올림
    
   lazy var myProfile = [UIImage(named: "a"), UIImage(named: "b"), UIImage(named: "c")]
    
    // computed property(계산)
    var isAdult: Bool {
        if age > 19 {
            return true
        }
        return false
    }
    
    // email -> 보안  -> 암호화 된 값으로 사용한다. (항상)
    var _email = ""
    var email: String {
        get{
            return _email
        }
        set{
            _email = newValue.hash.description
        }
    }
}


let myInfo = MyInfo()
myInfo.email = "abc@test.com"
myInfo.email

myInfo.age = 20
myInfo.name = "kim"
myInfo.isAdult
myInfo.myProfile

print(myInfo.age)
