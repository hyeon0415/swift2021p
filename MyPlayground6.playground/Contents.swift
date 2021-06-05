import UIKit

 //optional 있을수도 없을수도
var carName: String?
carName = nil
carName = "Tank"

// 1. 아주 간단한 과제: 최애 배우이름을 받는 변수를 작성, (타입 Sting?)
// 2. let num = Int("10") -> 타입은 뭘까요??

//var actorName: String?
//actorName = "조승우"
//actorName = "이병헌"
//actorName = nil
//
//let num = Int("10")

// 고급 기능 4가지

// forced unrapping = 억지로 박스를 까보기
// optional binding (if let) = 부드럽게 박스를 까보기1
// optional binding (guard) = 부드럽게 박스를 까보기2
// nil coalescing = 박스를 까봤더니 값이 없으면 디폴트 값을 줘보자

carName = nil
//print(carName!)

if let unwrappedCarName = carName{
    print(unwrappedCarName)
} else{
    print("Car Name 없다")
}


//여행 계획표
//- 싱가폴
//- 싱가폴 맛집
//- 싱가폴 속초
//
//여행 계획표
//    - ㅇㅇㅇㅇ
//    - ㅇㅇㅇㅇ 만나고
//- 싱가폴
//- 싱가폴 맛집
//- 싱가폴 속초


//func printParsedInt(from: String){
//    if let parcedInt = Int(from) {
//        print(parcedInt)
//        // Cyclometic complexity
//    } else{
//        print("Int로 컨버팅 안된다 짜샤")
//    }
//}

//printParsedInt(from: "100")
//printParsedInt(from: "헬로우 마이네임 이즈")

func printParsedInt(from: String){
    
    guard let parcedInt = Int(from) else {
        print("Int로 컨버팅 안된다 짜샤")
        return
    }
        print(parcedInt)
    }

//printParsedInt(from: "100")
printParsedInt(from: "헬로우 마이네임 이즈")

// carName이 nil이면 모델 s로 해줘
carName = "모델 s"
let myCarName: String = carName ?? "모델 s"


// 도전과제
// 1. 최애 음식이름을 담는 변수를 작성하시오 (string?)
// 2. 옵셔널 바인딩을 이용해서 값을 확인해보기
// 3. 닉네임을 받아서 출력하는 함수 만들기, 조건 입력 마라미터는 string?


let favoriteFood: String? = "양고기"

if let foodName = favoriteFood{
    print(foodName)
} else{
    print("좋아하는 음식 없음")
}


func printNickName(name: String?){
    guard let nickName = name else{
        print("nickname 만들어보자")
        return
    }
    print(nickName)
}

printNickName(name: nil)




//var foodName: String?
//foodName = "chicken"
//
//
//
//foodName = "noodle"
//if let myFood = foodName{
//    print(myFood)
//} else {
//    print("틀렸다 임마")
//}

