import Foundation

func solution(_ n:Int) -> Int
{
    var result:Int = 0
    var cnt:Int = String(n, radix:2).filter{$0 == "1"}.count
    for i in (n+1)...1000000 {
        if String(i, radix:2).filter({$0 == "1"}).count == cnt {
            result = i
            break
        }
    }
    return result
}
