import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var times = [Int]()
    var fin = 0
    var result = [Int]()
    for i in 0..<progresses.count {
        var fin = progresses[i]
        var a = 0
        while (fin < 100) {
            fin += speeds[i]
            a += 1
        }
        times.append(a)
    }
    print(times)
    var max = times[0]
    var cnt = 0
    for time in times {
        if time <= max {
            cnt += 1
        } else {
            result.append(cnt)
            max = time
            cnt = 1
        }
    }
    result.append(cnt)
    
    return result
}