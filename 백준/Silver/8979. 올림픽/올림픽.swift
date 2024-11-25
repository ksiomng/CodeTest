import Foundation

func main() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let n = input[0]
    let k = input[1]
    
    var countrys = [[Int]]()
    
    for _ in 0..<n {
        let info = readLine()!.split(separator: " ").map { Int($0)! }
        countrys.append(info)
    }
    
    countrys.sort {
        if $0[1] != $1[1] {
            return $0[1] > $1[1]
        } else if $0[2] != $1[2] {
            return $0[2] > $1[2]
        } else {
            return $0[3] > $1[3]
        }
    }
    
    var result = 1
    for i in 0..<n {
        if countrys[i][0] == k {
            break
        }
        if countrys[i][1] != countrys[i + 1][1] ||
           countrys[i][2] != countrys[i + 1][2] ||
           countrys[i][3] != countrys[i + 1][3] {
            result += 1
        }
    }
    
    print(result)
}

main()
