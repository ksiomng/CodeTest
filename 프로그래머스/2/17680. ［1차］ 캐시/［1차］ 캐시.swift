func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    
    let Citiies = cities.map { //대소문자 구분 X
        return $0.lowercased()
    }
    
    var arr = [String]()
    var cnt: Int = 0
    
    for city in Citiies {
        //cache hit
        if arr.contains(city) {
            cnt = cnt + 1
            arr.remove(at: arr.firstIndex(of: city)!)
            arr.insert(city, at: 0)
        }
        //cache miss
        else {
            cnt = cnt + 5
            arr.insert(city, at: 0)
            if arr.count > cacheSize {
                arr.removeLast()
            }
        }
    }
    return cnt
}