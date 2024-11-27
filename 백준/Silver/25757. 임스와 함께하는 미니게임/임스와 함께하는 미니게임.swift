import Foundation

let firstLine = readLine()!.split(separator: " ")
let n = Int(firstLine[0])!
let gameType = firstLine[1]

var players = Set<String>()

for _ in 0..<n {
    let player = readLine()!
    players.insert(player)
}

let requiredPlayers: Int
switch gameType {
case "Y":
    requiredPlayers = 2
case "F":
    requiredPlayers = 3
case "O":
    requiredPlayers = 4
default:
    fatalError("잘못된 게임 유형")
}

let maxGames = players.count / (requiredPlayers - 1)

print(maxGames)
