import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    if a%2==1 && b%2==1 {
        return a*a + b*b
    }
    else if a%2==0 && b%2==0 {
        return (a - b) > 0 ? a - b : (a - b) * -1
    }
    return 2 * (a + b)
}