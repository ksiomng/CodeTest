func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var string = ""
    
    for num in 0...m*t{
        string += String(num, radix: n).uppercased()
    }
    let list = Array(string)
    
    var result = ""
    for i in 0..<t {
        result += String(list[i*m+(p-1)])
    }
    return result
}
