import Foundation

while true {
    var arr: [Int] = readLine()!.split(separator: " ").map{ Int($0)! }
    arr.sort()
    if arr[2] == 0 {
        break
    }
    if arr[2] < arr[0] + arr[1] {
        if arr[0] == arr[1] && arr[1] == arr[2] {
            print("Equilateral")
        } else if arr[0] == arr[1] || arr[1] == arr[2] {
            print("Isosceles")
        } else {
            print("Scalene")
        }
    } else {
        print("Invalid")
    }
}
