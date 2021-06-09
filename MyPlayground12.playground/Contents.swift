import UIKit


//stored 프로퍼티 
struct Person {
    var firstName: String
    var lastName: String
    
    var fullName: String {
        get{
            return "\(firstName) \(lastName)"
        }
        set{
            
            if let firstName = newValue.components(separatedBy: " ").first{
                self.firstName = firstName
            }
            if let lastName = newValue.components(separatedBy: " ").last{
                self.lastName = lastName
        }
    }
}
    static let isAlien: Bool = false
}


    var person = Person(firstName: "Jason", lastName: "Lee")

person.firstName
person.lastName


person.firstName = "Jim"
person.lastName = "Kim"

person.firstName
person.lastName

//프로퍼티

person.fullName

//set 있어야 가능
person.fullName = "Jay Park"
person.fullName
person.firstName
person.lastName

//타입 프로퍼티
//인스턴트 상관 없이 스트럭된 타입 자체의 속성을 정하고 싶을때

Person.isAlien
