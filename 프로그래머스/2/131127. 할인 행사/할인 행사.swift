import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    let cnt = want.count
    var wantArr = [Int](repeating: 0, count: cnt)
    var discountArr = [Int](repeating: 0, count: cnt)

    var saleDict = [String: Int]()

    for i in 0..<want.count {
        saleDict[want[i]] = i
        wantArr[i] = number[i]
    }

    for i in 0..<10 {
        guard let idx = saleDict[discount[i]] else {
            continue
        }
        discountArr[idx] += 1
    }

    var answer = 0

    if wantArr == discountArr {
        answer += 1
    }

    for i in 0..<discount.count-10 {
        if let idx = saleDict[discount[i]] {
            discountArr[idx] -= 1
        }

        if let idx = saleDict[discount[i+10]] {
            discountArr[idx] += 1
        }

        if wantArr == discountArr {
            answer += 1
        }
    }

    return answer
}