import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var mys = Array(myString)
    for i in 0..<mys.count {
        mys[i] = mys[i] == "A" ? "B" : "A"   
    }
    return String(mys).contains(pat) ? 1 : 0
}