import Foundation

func findHeartAndBodyParts(_ grid: [[Character]]) -> (heart: (Int, Int), lengths: [Int]) {
    let n = grid.count
    var heart = (0, 0)
    var lengths = [0, 0, 0, 0, 0]
    
    for i in 0..<n {
        for j in 0..<n {
            if grid[i][j] == "*" {
                if i + 1 < n, grid[i + 1][j] == "*" {
                    heart = (i + 1, j)
                    break
                }
            }
        }
        if heart != (0, 0) { break }
    }
    
    let (hx, hy) = heart
    
    var leftArmLength = 0
    for j in stride(from: hy - 1, through: 0, by: -1) {
        if grid[hx][j] == "*" {
            leftArmLength += 1
        } else {
            break
        }
    }
    lengths[0] = leftArmLength
    
    var rightArmLength = 0
    for j in stride(from: hy + 1, to: n, by: 1) {
        if grid[hx][j] == "*" {
            rightArmLength += 1
        } else {
            break
        }
    }
    lengths[1] = rightArmLength
    
    var waistLength = 0
    for i in stride(from: hx + 1, to: n, by: 1) {
        if grid[i][hy] == "*" {
            waistLength += 1
        } else {
            break
        }
    }
    lengths[2] = waistLength
    
    var leftLegLength = 0
    for i in stride(from: hx + waistLength + 1, to: n, by: 1) {
        if grid[i][hy - 1] == "*" {
            leftLegLength += 1
        } else {
            break
        }
    }
    lengths[3] = leftLegLength
    
    var rightLegLength = 0
    for i in stride(from: hx + waistLength + 1, to: n, by: 1) {
        if grid[i][hy + 1] == "*" {
            rightLegLength += 1
        } else {
            break
        }
    }
    lengths[4] = rightLegLength
    
    return (heart, lengths)
}

func main() {
    let n = Int(readLine()!)!
    var grid: [[Character]] = []
    for _ in 0..<n {
        grid.append(Array(readLine()!))
    }

    let result = findHeartAndBodyParts(grid)
    let (heart, lengths) = result
    
    print("\(heart.0 + 1) \(heart.1 + 1)")
    print(lengths.map { String($0) }.joined(separator: " "))
}

main()