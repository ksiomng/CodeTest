func solution(_ phone_number:String) -> String {
    var result: String = ""
    for _ in 0..<(phone_number.count-4) {
        result.append("*")
    }
    result += String(phone_number.suffix(4))
    return result
}