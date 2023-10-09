import Foundation
//
// < 처음풀이 >
//func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
//    var result = [Int]()
//    for i in 0..<commands.count {
//        var temp = [Int]()
//        for j in (commands[i][0]-1)...(commands[i][1]-1) {
//            temp.append(array[j])
//        }
//        temp = temp.sorted()
//        result.append(temp[(commands[i][2]-1)])
//    }
//    return result
//}

// < 리팩토링 >
func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map({(key) in
        return array[(key[0]-1)...(key[1]-1)].sorted()[key[2]-1]
    })
}