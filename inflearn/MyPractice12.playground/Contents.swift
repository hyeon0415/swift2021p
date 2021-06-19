import UIKit

// Class

class MyInfo {
    init(gender: GenderType) {
        self.genderType = gender
    }
    enum GenderType {
        case male
        case female
    }
    private var genderType: GenderType
    
    var name = ""
    var age = 0
    
    func isAdult() -> Bool {
        if age > 19 {
            return true
        }
        return false
    }
}


var myInfo = MyInfo(gender: .female)

//myInfo.genderType = .male
//
//myInfo.genderType

// private을 쓰면 초기값에만 나옴. 내부적으로만 사용 가능
myInfo.age = 20

// 참조 (값을 복사, 원본은 하나만 있는것  class are reference type)
var myInfo2 = myInfo
myInfo2.age = 100

var myInfo3 = myInfo2
myInfo2.age
myInfo3.age



// 상속

class GameInfo {
    var homeScore = 0
    var awayScore = 0
    
   /*final붙이면 오버라이드 금지*/
    func presentScore() -> String {
        return homeScore.description + " : " + awayScore.description
    }
}

class Soccer: GameInfo {
    var time = 0

}

// override = 부모한테서 그것만 좀 받아오겠다.
class Baseball: GameInfo {
    override func presentScore() -> String {
        return homeScore.description + " 대 " + awayScore.description
    }
    var round = 0

}

class Football: GameInfo{

}
 

let soccer = Soccer()
soccer.awayScore = 1
soccer.homeScore = 2
soccer.time = 45
soccer.presentScore()


let baseball = Baseball()
baseball.homeScore = 20
baseball.presentScore()
baseball.round = 2
