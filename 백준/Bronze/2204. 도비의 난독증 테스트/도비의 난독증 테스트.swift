import Foundation

while let firstLine = readLine(), let n = Int(firstLine), n != 0 {
    var words = [String]()
    
    for _ in 0..<n {
        if let word = readLine() {
            words.append(word)
        }
    }
    
    let sortedWords = words.sorted { $0.lowercased() < $1.lowercased() }
    
    print(sortedWords[0])
}
