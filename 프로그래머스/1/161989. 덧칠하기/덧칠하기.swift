import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var arr = [Int](repeating: 1, count: n+1)
    var cnt:Int = 0
    var idx:Int = 0
    
    for i in section { arr[i] = 0 } //칠해지지 않은부분을 0으로
    
    while (idx < arr.count) { //인덱스가 arr.count를 넘지않게, 배열 idx의 값이 0 이면 칠해주고 카운트, 다음 인덱스 부여
        if arr[idx] == 0 {
            cnt += 1
            idx += m
        }
        else {
            idx += 1
        }
    }
    return cnt
}