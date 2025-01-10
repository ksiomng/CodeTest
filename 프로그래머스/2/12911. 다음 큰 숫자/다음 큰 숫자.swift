import Foundation

func solution(_ n: Int) -> Int {
    let countOnes = { (number: Int) -> Int in
        return String(number, radix: 2).filter { $0 == "1" }.count
    }
    
    let targetOnes = countOnes(n)
    var nextNumber = n + 1
    
    while countOnes(nextNumber) != targetOnes {
        nextNumber += 1
    }
    
    return nextNumber
}