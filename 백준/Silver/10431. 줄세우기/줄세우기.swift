import Foundation

func processTestCase(testCase: [Int]) -> Int {
    var line = [Int]()
    var moves = 0
    
    for student in testCase {
        var position = line.count
        for i in 0..<line.count {
            if line[i] > student {
                position = i
                break
            }
        }
        
        moves += line.count - position
        
        line.insert(student, at: position)
    }
    
    return moves
}

func main() {
    let testCases = Int(readLine()!)!
    for _ in 0..<testCases {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let caseNumber = input[0]
        let studentHeights = Array(input[1...])
        
        let result = processTestCase(testCase: studentHeights)
        
        print("\(caseNumber) \(result)")
    }
}

main()