import Foundation

func solution(_ arr1:[Int], _ arr2:[Int]) -> Int {
    if arr1.count == arr2.count {
        let a1 = arr1.reduce(0, +)
        let a2 = arr2.reduce(0, +)
        if a1 == a2 {
            return 0
        }
        else {
            return a1 > a2 ? 1 : -1
        }
    }
    return arr1.count > arr2.count ? 1 : -1
}