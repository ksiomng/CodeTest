import Foundation

func solution(_ progresses: [Int], _ speeds: [Int]) -> [Int] {
    var result: [Int] = []
    var days: [Int] = []
    
    // 각 작업이 완료되는데 필요한 일수 계산
    for (progress, speed) in zip(progresses, speeds) {
        let remainingWork = 100 - progress
        let daysNeeded = Int(ceil(Double(remainingWork) / Double(speed)))
        days.append(daysNeeded)
    }
    
    var maxDay = days[0]
    var count = 0
    
    // 배포 가능한 기능 수 계산
    for day in days {
        if day <= maxDay {
            count += 1
        } else {
            result.append(count)
            count = 1
            maxDay = day
        }
    }
    
    // 마지막 배포 추가
    if count > 0 {
        result.append(count)
    }
    
    return result
}
