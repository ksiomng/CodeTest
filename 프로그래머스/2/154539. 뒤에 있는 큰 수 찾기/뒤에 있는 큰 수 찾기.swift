func solution(_ numbers:[Int]) -> [Int] {
    
    var stack = [0]
    var index = 1
    var ans = Array(repeating: -1, count: numbers.count)
    
    while index < numbers.count {
        // 현재 index가 stack.last에 있는 index이 뒷큰수가 될 수 있는 경우
        while !stack.isEmpty && numbers[stack.last!] < numbers[index] {
            ans[stack.popLast()!] = numbers[index]
        }
        
        // 현재 index가 더 이상 stack.last의 뒷큰수가 될 수 없는 경우
        stack.append(index) // 현재 index의 뒷큰수를 구하기 위해서 stack에 넣고
        index += 1
    }
    return ans
}