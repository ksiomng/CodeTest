func solution(_ str1: String, _ str2: String) -> Int {
    var arr1 = [String]()
    var arr2 = [String]()

    var string1 = str1.uppercased()
    var string2 = str2.uppercased()

    while string1.count > 1 {
        let a = String(string1.prefix(2))
        arr1.append(a)
        string1.removeFirst()
    }

    while string2.count > 1 {
        let a = String(string2.prefix(2))
        arr2.append(a)
        string2.removeFirst()
    }

    arr1 = arr1.filter { $0.allSatisfy { $0.isLetter } }
    arr2 = arr2.filter { $0.allSatisfy { $0.isLetter } }

    let inter = arr1.filter { arr2.contains($0) }
    var intersection:Int = 0
    
    for i in Set(inter) {
        let count1 = arr1.filter{ $0 == i }.count
        let count2 = arr2.filter{ $0 == i }.count
        intersection += min(count1, count2)
    }

    let union = arr1.count + arr2.count - intersection

    let similarity: Double = union > 0 ? Double(intersection) / Double(union) : 1.0

    return Int(similarity * 65536)
}