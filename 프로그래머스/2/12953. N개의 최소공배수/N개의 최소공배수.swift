import Foundation

func solution(_ arr:[Int]) -> Int {
    // 1로 초깃값을 설정하고 reduce로 값을 계산
    return arr.reduce(1){lcm($0, $1)} 
}

// 최소공배수 구하는 함수 -> 두 수의 곱 / 최대공약수
func lcm( _ a:Int,_ b:Int) -> Int {  
    return (a * b) / gcd(a, b)
}

// 최대공약수 구하는 함수 -> 재귀로 최대가 나올 때 까지 반복
func gcd(_ a:Int,_ b:Int) -> Int { 
    let r = a%b
    if r != 0 {
        return gcd(b, r)
    } else {
        return b
    }
}