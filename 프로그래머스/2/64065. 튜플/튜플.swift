import Foundation

func solution(_ s: String) -> [Int] {
    var arrs = Array(s)
    var arr = [Int]()
    var tupleArray = [[Int]]()
    var result = [Int]()
    
    arrs.removeFirst()
    arrs.removeLast()
    
    var str = ""     // 숫자를 임시로 저장할 문자열 변수
    var i = 0
    
    while true {
        if arrs[i] == "{" {
            while true {
                i += 1
                if arrs[i] == "}" {
                    break
                }
                // 숫자인 경우 문자열에 추가
                if arrs[i].isNumber {
                    str.append(String(arrs[i]))
                }
                // ','를 만나면 숫자를 배열에 추가하고 임시 문자열 초기화
                else if arrs[i] == "," {
                    arr.append(Int(str)!)
                    str.removeAll()
                }
            }
            // 마지막 숫자를 배열에 추가하고 임시 문자열 초기화
            arr.append(Int(str)!)
            str.removeAll()
            tupleArray.append(arr)              // 튜플을 배열에 추가
            arr = []
        } else {
            i += 1      // '{'가 아니면 다음 위치로 이동
        }
        
        if i >= arrs.count {        // 문자열 끝에 도달하면 반복 종료
            break
        }
    }
    
    tupleArray = tupleArray.sorted(by: {$0.count < $1.count})
    
    for tups in tupleArray {
        for tup in tups {
            if !result.contains(tup) {
                result.append(tup)
            }
        }
    }
    
    return result
}