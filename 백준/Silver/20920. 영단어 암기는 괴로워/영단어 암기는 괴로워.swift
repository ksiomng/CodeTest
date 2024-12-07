import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0] // 입력받는 단어 수
let m = input[1] // 외울 단어 최소 길이

var dic = [String: Int]()

for _ in 0..<n {
    let word = readLine()!
    if word.count >= m {
        dic[word, default: 0] += 1
    }
}

let sortedWords = dic.keys.sorted { word1, word2 in
    let count1 = dic[word1]!
    let count2 = dic[word2]!
    
    if count1 != count2 {
        return count1 > count2
    } else if word1.count != word2.count {
        return word1.count > word2.count
    } else {
        return word1 < word2
    }
}

for word in sortedWords {
    print(word)
}