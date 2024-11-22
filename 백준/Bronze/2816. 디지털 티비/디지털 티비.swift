import Foundation

func reorderChannels() {
    let n = Int(readLine()!)!
    var channels = [String]()
    for _ in 0..<n {
        channels.append(readLine()!)
    }
    
    var result = ""
    var pointer = 0
    
    let kbs1Index = channels.firstIndex(of: "KBS1")!
    for _ in 0..<kbs1Index {
        result += "1"
        pointer += 1
    }
    for _ in 0..<kbs1Index {
        result += "4"
        pointer -= 1
        channels.swapAt(pointer, pointer + 1)
    }
    
    let kbs2Index = channels.firstIndex(of: "KBS2")!
    for _ in 0..<(kbs2Index) {
        result += "1"
        pointer += 1
    }
    for _ in 0..<(kbs2Index - 1) {
        result += "4"
        pointer -= 1
        channels.swapAt(pointer, pointer + 1)
    }

    print(result)
}

reorderChannels()