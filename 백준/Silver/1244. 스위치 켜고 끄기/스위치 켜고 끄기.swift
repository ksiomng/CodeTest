import Foundation

let switchCount = Int(readLine()!)!
var switches = readLine()!.split(separator: " ").compactMap { Int($0) }
let studentCount = Int(readLine()!)!

for _ in 1...studentCount {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    let gender = input[0]
    let number = input[1]
    
    if gender == 1 { // 남학생의 경우
        for i in stride(from: number - 1, to: switchCount, by: number) {
            switches[i] = toggle(switches[i])
        }
    } else if gender == 2 { // 여학생의 경우
        let center = number - 1
        var left = center
        var right = center
        
        while left > 0 && right < switchCount - 1 && switches[left - 1] == switches[right + 1] {
            left -= 1
            right += 1
        }
        
        for i in left...right {
            switches[i] = toggle(switches[i])
        }
    }
}

func toggle(_ state: Int) -> Int {
    return state == 0 ? 1 : 0
}

for i in stride(from: 0, to: switches.count, by: 20) {
    print(switches[i..<min(i + 20, switches.count)].map(String.init).joined(separator: " "))
}
