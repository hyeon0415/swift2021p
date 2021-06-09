import UIKit


//stored 프로퍼티
struct Person {
    var firstName: String{
        willSet{
            print("willSet: \(firstName) --> \(newValue)")
        }
        didSet{
            print("didSet: \(oldValue) --> \(firstName)")
        }
    }
    var lastName: String
    
    lazy var isPopular: Bool = {
        if fullName == "Jay Park"{
        return true
        } else {
            return false
        }
    }()
    
    //컴피티드 프로퍼티 -- 이미 저장된 프로퍼티로 재가공
//    var fullName: String {
//        get{
//            return "\(firstName) \(lastName)"
//        }
//        set{
//
//            if let firstName = newValue.components(separatedBy: " ").first{
//                self.firstName = firstName
//            }
//            if let lastName = newValue.components(separatedBy: " ").last{
//                self.lastName = lastName
//        }
//    }
//}
    var fullName: String {

            return "\(firstName) \(lastName)"
    }
//    func fullName() -> String{
//        return "\(firstName) \(lastName)"
//    }
    
    static let isAlien: Bool = false
}


    var person = Person(firstName: "Jason", lastName: "Lee")

//person.firstName
//person.lastName
//
//
//person.firstName = "Jim"
//person.lastName = "Kim"
//
//person.firstName
//person.lastName

//프로퍼티

//person.fullName

//set 있어야 가능
//person.fullName = "Jay Park"
//person.fullName
//person.firstName
//person.lastName

//타입 프로퍼티
//인스턴트 상관 없이 스트럭된 타입 자체의 속성을 정하고 싶을때

//Person.isAlien
//
//person.isPopular

person.fullName
//person.fullName()

// property -- 호출시 지정된 값을 하나 반환한다.
// method -- 호출시 어떤 작업을 한다.
// method가 리턴을 하면?
