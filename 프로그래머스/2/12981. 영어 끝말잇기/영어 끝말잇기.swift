import Foundation

func solution(_ n: Int, _ words: [String]) -> [Int] {
    var usedWords = Set<String>()
    usedWords.insert(words[0])
    
    for i in 1..<words.count {
        let prevWord = words[i-1]
        let currentWord = words[i]
        
        if usedWords.contains(currentWord) || prevWord.last != currentWord.first {
            let player = (i % n) + 1
            let turn = (i / n) + 1
            return [player, turn]
        }
        
        usedWords.insert(currentWord)
    }
    
    return [0, 0]
}
