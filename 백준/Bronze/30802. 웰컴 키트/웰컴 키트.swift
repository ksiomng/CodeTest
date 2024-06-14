import Foundation

func calculateOrders(N: Int, sizes: [Int], T: Int, P: Int) {
    // 티셔츠 주문 계산
    var totalBundles = 0
    for size in sizes {
        totalBundles += (size + T - 1) / T  // size / T의 올림 계산
    }
    
    // 펜 주문 계산
    let penBundles = N / P
    let remainingPens = N % P
    
    // 결과 출력
    print(totalBundles)
    print(penBundles, remainingPens)
}

// 입력 읽기
if let firstLine = readLine(), 
   let secondLine = readLine(), 
   let thirdLine = readLine() {
    let N = Int(firstLine)!
    let sizes = secondLine.split(separator: " ").map { Int($0)! }
    let TP = thirdLine.split(separator: " ").map { Int($0)! }
    let T = TP[0]
    let P = TP[1]
    
    calculateOrders(N: N, sizes: sizes, T: T, P: P)
}
