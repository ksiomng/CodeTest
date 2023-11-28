import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var arr = [String]()
    var arr2 = [String]()
    var result: Int = 0
    let cnt = number.reduce(0, +)
    for i in 0..<number.count {
        for _ in 0..<number[i]{
            arr.append(want[i])
        }
    }
    for i in 0...discount.count-cnt {
        arr2.removeAll()
        for j in i..<i+cnt {
            arr2.append(discount[j])
        }
        if arr.sorted() == arr2.sorted() {
            result += 1
        }
    }
    return result
}