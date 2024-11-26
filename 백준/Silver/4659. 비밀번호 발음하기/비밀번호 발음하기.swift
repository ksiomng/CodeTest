import Foundation

func main() {
    while true {
        let input = readLine() ?? ""
        
        if input == "end" {
            break
        }
        
        if isAcceptable(input) {
            print("<\(input)> is acceptable.")
        } else {
            print("<\(input)> is not acceptable.")
        }
    }
}

func isAcceptable(_ word: String) -> Bool {
    let vowels = Set(["a", "e", "i", "o", "u"])
    var hasVowel = false
    var vowelCount = 0
    var consonantCount = 0
    var prevChar: Character? = nil
    
    for char in word {
        if vowels.contains(String(char)) {
            hasVowel = true
            vowelCount += 1
            consonantCount = 0
        } else {
            consonantCount += 1
            vowelCount = 0
        }
        
        if vowelCount >= 3 || consonantCount >= 3 {
            return false
        }
        
        if char == prevChar && char != "e" && char != "o" {
            return false
        }
        
        prevChar = char
    }
    
    return hasVowel
}

main()
