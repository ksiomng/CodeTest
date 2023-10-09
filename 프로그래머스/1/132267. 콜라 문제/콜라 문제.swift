import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int { 
   var share = n
   var rest = 0
   var answer = 0
   while ( share >= a) {
       rest = share%a
       share = share/a * b

       answer += share
       share = share + rest
   }
   return answer
}