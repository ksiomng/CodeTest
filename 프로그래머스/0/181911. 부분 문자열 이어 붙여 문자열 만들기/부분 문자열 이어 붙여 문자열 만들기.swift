import Foundation

func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
    var str = ""
    (0...my_strings.count-1).forEach { i in
        var arr = my_strings[i].map{ String($0) }
        str = str + arr[parts[i][0]...parts[i][1]].joined()
    }
    return str
}