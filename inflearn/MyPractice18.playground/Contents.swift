import UIKit

// protocol -- 지켜야 할 약속, 구현되어야 할 메서드, 프로퍼티

// 강의 이름, 강사 이름, 학생수를 가지는 Struct 만들기
// 강의 어레이와 강사이름을 받아서 해당 강사의 강의 이름을 출력하는 함수 만들기
// 강의 3개 만들고 강사이름으로 강의 찾기


// CustomStringConvertible -- 우리가 맘대로 글씨를 출력가능


struct Lecture: CustomStringConvertible {
    var description: String{
        return "title: \(name), instructor: \(insturctor)"
    }
    let name: String
    let insturctor: String
    let numOfStudent: Int
}

func printLectureName(from insturctor: String, lectures: [Lecture]) {
    var lectureName = ""
    
    for lecture in lectures {
        if insturctor == lecture.insturctor {
            lectureName = lecture.name
        }
    }
    print("아 그 강사님 강의는요: \(lectureName)")
}

let lec1 = Lecture(name: "IOS Basic", insturctor: "Jason", numOfStudent: 5)
let lec2 = Lecture(name: "IOS Advance", insturctor: "Jack", numOfStudent: 5)
let lec3 = Lecture(name: "IOS Pro", insturctor: "Jim", numOfStudent: 5)
let lectures = [lec1, lec2, lec3]


printLectureName(from: "Jack", lectures: lectures)


print(lec1)
