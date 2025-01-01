import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let (A, B, N) = (input[0], input[1], input[2])

var numerator = A % B // A를 B로 나눈 나머지를 초기 분자로 설정
var result = 0        // N번째 자리의 숫자를 저장할 변수

for _ in 1...N {
    numerator *= 10       // 분자를 10배 확대
    result = numerator / B // 현재 자릿수 계산
    numerator %= B        // 나머지 계산
}

print(result)
