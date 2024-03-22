import Foundation

func solution(_ land:[[Int]]) -> Int{
    var lands = land
    
    for i in 1..<land.count {
        for j in 0..<4 {
            for k in 0..<4 {
                if j != k {
                    lands[i][j] = max(lands[i][j], lands[i-1][k] + land[i][j])
                }
            }
        }
    }

    return lands.last!.max()!
}