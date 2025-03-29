func solution(_ s: String, _ n: Int) -> String {
    var result = ""

    for char in s {
        if char == " " { 
            result.append(char)
            continue
        }
        
        let isUpper = char.isUppercase ? 65 : 97 // 대문자: 'A'(65), 소문자: 'a'(97)
        let shifted = (Int(char.asciiValue!) - isUpper + n) % 26 + isUpper
        let newChar = Character(UnicodeScalar(shifted)!)
        
        result.append(newChar)
    }

    return result
}

