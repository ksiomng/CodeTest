import Foundation

func solution(_ num_list:[Int]) -> Int {
    var odd:String = ""
    var even:String = ""
    for num in num_list {
        if num%2==1 {
            odd += String(num)
        } else {
            even += String(num)
        }
    }
    return Int(odd)! + Int(even)!
}