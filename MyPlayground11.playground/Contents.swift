import UIKit

// 도전과제
// 1. 강의 이름, 강사 이름, 학생수를 가지는 sturc 만들기


// 2. 강의 어레이와 강사이름을 받아서 해당 강의의 이름을 출력하는 함수 만들기
// 3. 강의 3개 만들고 강사이름으로 강의 찾기

// CustomStringConvertible

struct Lecture: CustomStringConvertible {
    var description: String{
        return "Title: \(name), Instructor: \(instructor)"
    }
    let name: String
    let instructor: String
    let numOfStudent: Int
}

func printLecturName(from instructor: String, lectures: [Lecture]) {
    var lectureName = ""

    for lecture in lectures{
        if instructor == lecture.instructor{
            lectureName = lecture.name
        }
    }
    //let lectureName = lectures.first { $0.instructor == instructor}?.name ?? ""
     
    print("아 그 강사님 강의는요: \(lectureName)")
}

let lec1 = Lecture(name: "IOS Basic", instructor: "Jason", numOfStudent: 5)
let lec2 = Lecture(name: "IOS Advance", instructor: "Jack", numOfStudent: 5)
let lec3 = Lecture(name: "IOS Pro", instructor: "Jim", numOfStudent: 5)
let lectures = [lec1, lec2, lec3]

printLecturName(from: "Jack", lectures: lectures)


print(lec1)
