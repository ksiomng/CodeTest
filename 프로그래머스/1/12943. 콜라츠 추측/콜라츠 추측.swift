func solution(_ num:Int) -> Int {
    var k = num
    var cnt = 0
    while (k != 1){
    k = (k%2 == 0 ? k/2:k*3+1)
        cnt += 1
        if cnt >= 500 {
            return -1
        }
    }
    return cnt
}