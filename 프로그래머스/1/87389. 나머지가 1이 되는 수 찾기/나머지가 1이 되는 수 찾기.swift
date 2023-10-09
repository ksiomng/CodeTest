import Foundation

func solution(_ n:Int) -> Int {
    return Array(2...n).filter{n % $0 == 1}.sorted()[0]
}