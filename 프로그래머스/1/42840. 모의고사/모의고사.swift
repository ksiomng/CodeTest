import Foundation

// < 처음풀이 >
//func solution(_ answers:[Int]) -> [Int] {
//    var a = [1,2,3,4,5]
//    var b = [2, 1, 2, 3, 2, 4, 2, 5]
//    var c = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
//    var a_cnt = ["cnt": 0, "idx" : 1]
//    var b_cnt = ["cnt": 0, "idx" : 2]
//    var c_cnt = ["cnt": 0, "idx" : 3]
//    for i in 0..<answers.count {
//        if answers[i] == a[i%a.count] {
//            a_cnt["cnt"]! += 1
//        }
//        if answers[i] == b[i%b.count] {
//            b_cnt["cnt"]! += 1
//        }
//        if answers[i] == c[i%c.count] {
//            c_cnt["cnt"]! += 1
//        }
//    }
//    var arr = [a_cnt, b_cnt, c_cnt]
//    let max = arr.max{ $0["cnt"]! < $1["cnt"]! }!
//    
//    return arr.filter{$0["cnt"]! == max["cnt"]!}.map{$0["idx"]!}
//}

// < 리팩토링 >
func solution(_ answers:[Int]) -> [Int] {
    let answer = (
        a : [1,2,3,4,5],
        b : [2, 1, 2, 3, 2, 4, 2, 5],
        c : [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    )
    var cnt = [1:0, 2:0, 3:0]
    for i in 0..<answers.count {
        cnt[1]! +=  answer.a[i%5] == answers[i] ? 1 : 0
        cnt[2]! +=  answer.b[i%8] == answers[i] ? 1 : 0
        cnt[3]! +=  answer.c[i%10] == answers[i] ? 1 : 0
    }

    return cnt.filter{$0.value == cnt.values.max()!}.map{$0.key}.sorted()
}