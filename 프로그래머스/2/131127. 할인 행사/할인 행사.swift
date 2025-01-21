import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var idx = 0
    var arr = [String]()
    var cnt: Int = 0
    
    for i in 0..<want.count {
        for _ in 0..<number[i] {
            arr.append(want[i])
        }
    }

    while idx+10 <= discount.count {
        if discount[idx..<idx+10].sorted() == arr.sorted() {
            cnt += 1
        }
        idx += 1
    }
    return cnt
}