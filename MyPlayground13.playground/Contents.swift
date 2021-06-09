import UIKit

struct Lecture{
    var title: String
    var maxStudents: Int = 10
    var numOfRegistered: Int = 0
    
    //메소드
    func remainSeats() -> Int{
        let remainSeats = maxStudents - numOfRegistered
        return remainSeats
    }
    mutating func register() {
        // 등록된 학생수 증가시키기
        numOfRegistered += 1
    }
    // 타입 프로퍼티
    static let target: String = "Anybody want to learn something"
    //타입 매소드
    static func 소속학원이름() -> String {
        return "패캠"
    }
    
}
var lec = Lecture(title: "IOS Basic")

// 남은 좌석 구하는 함수
func remainSeats(of lec: Lecture) -> Int{
    let remainSeats = lec.maxStudents - lec.numOfRegistered
    return remainSeats
}

//remainSeats(of: lec)
lec.remainSeats()

lec.register()
lec.register()
lec.register()
lec.register()
lec.register()
lec.register()

lec.remainSeats()

Lecture.target
Lecture.소속학원이름()
