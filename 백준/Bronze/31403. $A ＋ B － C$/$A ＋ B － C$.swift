var arr = [Int]()
var arr2 = [String]()

for _ in 0..<3 {
    let input = readLine()!
    if let num = Int(input) {
        arr.append(num)
    }
    arr2.append(input)
}

let resultString = "\(arr2[0])\(arr2[1])"

print(arr[0] + arr[1] - arr[2])
print(Int(resultString)! - arr[2])

