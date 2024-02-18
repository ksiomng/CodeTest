import Foundation

func solution(_ msg: String) -> [Int] {
    let msgs = Array(msg)

    var alp: [String] = (0..<26).map { "\(Character(UnicodeScalar($0 + 65)!))" }    //알파벳을 치지않고 입력
    
    var result = [Int]()

    var cnt: Int = 0     // 입력 문자열을 순회하기 위한 인덱스 변수
    var word: String = ""  // 현재 단어를 저장할 변수

    // 입력 문자열을 모두 처리할 때까지 반복
    while cnt < msgs.count {
        word += String(msgs[cnt])

        if alp.contains(word) {
            cnt += 1
            // 현재 단어가 마지막 단어일 경우 결과에 추가
            if cnt == msgs.count {
                result.append(alp.firstIndex(of: word)! + 1)
            }
        } else {
            // 결과에 현재 단어의 인덱스 추가하고, 현재 단어를 알파벳 배열에 추가
            alp.append(word)
            result.append(alp.firstIndex(of: String(word.dropLast()))! + 1)
            word = ""
        }
    }

    return result
}
