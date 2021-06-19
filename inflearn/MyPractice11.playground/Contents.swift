import UIKit

// enumerations

// enum
// 타입분류

// 도서관을 관리하는 앱 -> 항목 -> 소설, 문제집, 패션...


// 분류만 하고싶다. + 해당 값 필요
//enum BookType {
//    case fiction(title: String, price: Int, year: Int)
//    case comics(title: String, price: Int, year: Int)
//    case workbook(title: String, price: Int, year: Int)
//    // ....
//}
//
//var bookStyle: BookType?
//var books = [BookType]()
//
//func saveBook(book: BookType) {
//
//    books.append(book)
//}
//
////func loadBook(book: BookType) -> [BookType] {
////   var tempBooks = [BookType]()
////
////    for item in books {
////        if item == book {
////            tempBooks.append(item)
////        }
////    }
////    return tempBooks
////}
//
////saveBook(book: .comics)
////saveBook(book: .fiction)
////saveBook(book: .workbook)
////saveBook(book: .workbook)
//
//books
//
//
////loadBook(book: .workbook)
//
//saveBook(book: .comics(title: "aaa", price: 5000, year: 2020))
//saveBook(book: .comics(title: "bbb", price: 6000, year: 2021))
//saveBook(book: .comics(title: "ccc", price: 7000, year: 2010))
//saveBook(book: .workbook(title: "ddd", price: 7000, year: 2010))
//saveBook(book: .fiction(title: "eee", price: 4000, year: 2020))
//saveBook(book: .fiction(title: "fff", price: 8000, year: 2015))
//
//for book in books {
//
//    if case let BookType.comics(title, _, _) = book {
//        print("comics", title)
//    }
//
//
//    switch book {
//    case let .comics(_, price, _):
//        print(price)
//
//    case let .fiction(title, _, _)
//    default: break
//
//    }
//}
