func solution(_ s:String, _ n:Int) -> String {
    let arr = Array(s)
    var str = ""
    for v in s.unicodeScalars {
        var asc = Int(v.value)
        if asc == 32 {
            str.append(" ")
        }
        else {
            switch asc {
            case 65...90:
                asc = asc + n
                str.append(String(UnicodeScalar((asc-65)%26 + 65)!))
            case 97...122:
                asc = asc + n
                str.append(String(UnicodeScalar((asc-97) % 26 + 97)!))
            default:
                break
            }
        }
    }
    return str
}