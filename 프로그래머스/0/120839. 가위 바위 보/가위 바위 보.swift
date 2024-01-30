import Foundation

func solution(_ rsp:String) -> String {
    var result:String = ""
    for r in rsp {
        if r == "0" {
            result.append("5")
        } 
        else if r == "2"{
            result.append("0")
        }
        else {
            result.append("2")
        }
    }
    return result
}