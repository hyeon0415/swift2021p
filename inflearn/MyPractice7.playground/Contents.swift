import UIKit

// DIctionary

var namesOfStreet = [String : Any]()
namesOfStreet["302ro"] = "1st Street"
namesOfStreet["303ro"] = "2nd Street"
//namesOfStreet["304ro"] = 3

// nil넣으면 값이 그냥 사라짐
//namesOfStreet["302ro"] = nil

var namesOfStreet2 = ["a" : 1, "b" : 2, "c": 3]

// key들을 보려면
//namesOfStreet.keys

for dic in namesOfStreet {
   print(dic)
}
