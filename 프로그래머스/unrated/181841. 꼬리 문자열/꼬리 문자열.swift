import Foundation

func solution(_ str_list:[String], _ ex:String) -> String {
    var result:String = ""
    for l in str_list {
        if !l.contains(ex) {
            result += l
        }
    }
    return result
}
