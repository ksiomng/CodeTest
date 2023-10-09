func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var arr_1 = [String]()
    var arr_2 = [String]()
    var answer = [String]()
    
    for i in 0..<n {
        var str  = String(String(arr1[i], radix: 2).reversed())
        str = (str.padding(toLength: n, withPad: "0", startingAt: 0))
        arr_1 += [String(str.reversed())]
        var str2  = String(String(arr2[i], radix: 2).reversed())
        str2 = (str2.padding(toLength: n, withPad: "0", startingAt: 0))
        arr_2 += [String(str2.reversed())]
    }
    
    for i in 0..<n {
        var str_a = ""
        var ziparr = zip(arr_1[i], arr_2[i])
        for (n, m) in ziparr {
                str_a += n == "0" && m == "0" ? " " : "#"
        }
        answer += [str_a]
    }

    return answer
}