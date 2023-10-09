// func solution(_ a:Int, _ b:Int) -> Int64 {
//     return Int64(Array(a > b ? b...a : a...b).reduce(0, +))
// }

func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64(a<b ? (a...b).reduce(0, +):(b...a).reduce(0, +))
}