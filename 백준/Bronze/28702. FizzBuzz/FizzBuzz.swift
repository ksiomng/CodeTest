import Foundation

var arrs = [String]()
var result: Int = 0

for _ in 0..<3 {
    let arr = readLine()!
    arrs.append(arr)
}

var numbers = [Int]()
for str in arrs {
    if (Int(str) != nil) {
        numbers.append(Int(str)!)
    } else {
        numbers.append(0)
    }
}

for i in 0..<3 {
    if numbers[i] != 0 {
        result = numbers[i] + ( 3 - i )
        break
    }
}

func fizzBuzzOutput(_ number: Int) -> String {
    if number % 3 == 0 && number % 5 == 0 {
        return "FizzBuzz"
    } else if number % 3 == 0 {
        return "Fizz"
    } else if number % 5 == 0 {
        return "Buzz"
    } else {
        return "\(number)"
    }
}

print(fizzBuzzOutput(result))