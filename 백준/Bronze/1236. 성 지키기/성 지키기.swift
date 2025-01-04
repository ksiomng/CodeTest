import Foundation

func minimumGuardsNeeded(n: Int, m: Int, castle: [String]) -> Int {
    var rowsWithoutGuards = Set(0..<n)
    var colsWithoutGuards = Set(0..<m)

    for (rowIndex, row) in castle.enumerated() {
        for (colIndex, cell) in row.enumerated() {
            if cell == "X" {
                rowsWithoutGuards.remove(rowIndex)
                colsWithoutGuards.remove(colIndex)
            }
        }
    }

    return max(rowsWithoutGuards.count, colsWithoutGuards.count)
}

let dimensions = readLine()!.split(separator: " ").map { Int($0)! }
let n = dimensions[0]
let m = dimensions[1]

var castle = [String]()
for _ in 0..<n {
    castle.append(readLine()!)
}

let result = minimumGuardsNeeded(n: n, m: m, castle: castle)
print(result)