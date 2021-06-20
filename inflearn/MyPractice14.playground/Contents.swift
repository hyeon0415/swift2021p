import UIKit

// init
// 생성자

class MyInfo {
    var name: String
    var myid: String
    var isAdult: Bool
    var age: Int?  // 이렇게 하면 초기값 필요 없다
    
    // designated init
    init(n: String, id: String) {
        self.name = n
        self.myid = id
        
        self.isAdult = ((age ?? 0) > 17) ? true : false
    }
//    init() {
//        self.name = ""
//        self.myid = ""
//        self.age = 10 + 5 + 10
//        self.isAdult = (age > 19) ? true : false
//    }
//    init(id: String) {
//        self.name = ""
//        self.myid = id
//
//        self.isAdult = (age > 19) ? true : false
//    }
    
    // convenience init // 필수조건: 다른 init을 반드시 실행해야
    convenience init() {
        self.init(n: "", id: "")
}

convenience init(id: String) {
    self.init(n: "", id: id)
   }
}

var myInfo1 = MyInfo(n: "kim", id: "abcd")
myInfo1.myid
myInfo1.name
var myInfo2 = MyInfo()
var myInfo3 = MyInfo(id: "some id")

struct MyConfig {
    var conf: String
}

var myCon = MyConfig(conf: "xxxx")


