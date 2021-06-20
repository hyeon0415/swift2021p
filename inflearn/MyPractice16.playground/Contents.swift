import UIKit

// Structure





// value type 사용할때마다 새로운 구조로 사용됨. 다른 곳과 연결되는 것이 아님
struct ImageType {
    var type = ""
    var width = 0
    var height = 0   
}
var imageType1 = ImageType()
var imageType2 = imageType1
var imageType3 = imageType2

imageType1.type = "jpg"
imageType2.type = "png"
imageType3.type


imageType1.type
imageType2.type



class MyInfo {
    var myAge = 0
    
}
var info1 = MyInfo()
var info2 = info1
var info3 = info2

info1.myAge = 20
info2.myAge = 10

info1.myAge
info2.myAge
info3.myAge
