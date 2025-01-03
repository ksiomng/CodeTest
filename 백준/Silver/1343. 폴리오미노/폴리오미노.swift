import Foundation

let input: String = readLine()!
var xCnt: Int = 0

func coverWithPolyomino(input: String) -> String {
    var board = input
    board = board.replacingOccurrences(of: "XXXX", with: "AAAA") //replacingOccurrences 문자열의 특정 부분을 다른 문자열로 대체
    board = board.replacingOccurrences(of: "XX", with: "BB")

    if board.contains("X") {
        return "-1"
    }
    return board
}

let result = coverWithPolyomino(input: input)
print(result)
