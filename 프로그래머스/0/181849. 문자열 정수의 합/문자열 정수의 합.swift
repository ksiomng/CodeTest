import Foundation

func solution(_ num_str:String) -> Int {
    return num_str.reduce(0){Int($0)+Int(String($1))!}
}