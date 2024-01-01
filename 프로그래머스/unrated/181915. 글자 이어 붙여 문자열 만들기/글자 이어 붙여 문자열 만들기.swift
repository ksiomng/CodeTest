import Foundation

func solution(_ my_string:String, _ index_list:[Int]) -> String {
    let array = Array(my_string)
    var result:String = ""
    for i in index_list {
        result.append(array[i])
    }
    return result
}