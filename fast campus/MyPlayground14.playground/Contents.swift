import UIKit

//class -- reference type, heap, slow
//struce -- value type, stack, fast

struct PersonStruct {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    var fullName: String{
        return "\(firstName) \(lastName)"
    }
    
    mutating func uppercaseName(){
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

//class로 만들기
class PersonClass {
    var firstName: String
    var lastName: String
    
    //class객체를 생성할때 사용되는 생성함수
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String{
        return "\(firstName) \(lastName)"
    }
    
     func uppercaseName(){
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

var personStruct1 = PersonStruct(firstName: "Jason", lastName: "Lee")
var personStruct2 = personStruct1

var personClass1 = PersonClass(firstName: "Jason", lastName: "Lee")
var personClass2 = personClass1

personStruct2.firstName = "Jay"
personStruct1.firstName
personStruct2.firstName

personClass2.firstName = "Jay"
personClass1.firstName
personClass2.firstName

personClass2 = PersonClass(firstName: "Bob", lastName: "Lee")
personClass1.firstName
personClass2.firstName

personClass1 = personClass2
personClass1.firstName
personClass2.firstName


//struct을 써야하는 경우
// 두 object를 같다, 다르다로 비교해야 하는 경우
//let point1 = Point(x: 3, y: 5)
//let point2 = Point(x: 3, y: 5)

// copy된 각 객체들이 독립적인 상태를 가져야 하는 경우
//var myMac = Mac(owner: "Jason")
//var yourMac = myMac
//yourMac.owner = "Jay"
//
//myMac.owner
//yourMac.owner

//코드에서 오브젝트의 데이트를 여러 쓰레드 걸쳐 사용할 경우


//class를 써야하는 경우
// 두 object의 인스턴스 자체가 같음을 확인해야 할 때
// 하나의 객체가 필요하고 여러 대상에 의해 접근되고 변경이 필요한 경우

//일단 struct로 쓰자
