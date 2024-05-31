//
//  main.swift
//  Study
//
//  Created by Song Kim on 5/29/24.
//

import Foundation

var arr = [Int]()
let cnt = Int(readLine()!)!

if cnt > 1 {
    for _ in 0..<cnt {
        let a = Int(readLine()!)!
        arr.append(a)
    }
} else {
    let a = Int(readLine()!)!
    arr.append(a)
}

// 산술평균 계산
let sum = arr.reduce(0, +)
let mean = Double(sum) / Double(cnt)
let roundedMean = Int(round(mean))

// 배열 정렬
let sortedArr = arr.sorted()

// 중앙값 계산
let median = sortedArr[cnt / 2]

// 최빈값 계산
var frequency = [Int: Int]()
for number in arr {
    frequency[number, default: 0] += 1
}

let maxFrequency = frequency.values.max()!
let modes = frequency.filter { $0.value == maxFrequency }.keys.sorted()
let mode = modes.count == 1 ? modes[0] : modes[1]


// 범위 계산
let range = sortedArr.last! - sortedArr.first!

// 출력하기
print(roundedMean)
print(median)
print(mode)
print(range)
