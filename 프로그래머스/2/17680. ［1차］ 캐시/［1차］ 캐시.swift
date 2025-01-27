func solution(_ cacheSize: Int, _ cities: [String]) -> Int {
    if cacheSize == 0 { return cities.count * 5 }
    
    var cache: [String] = []
    var totalTime = 0
    
    for city in cities {
        let lowercaseCity = city.lowercased()
        
        if let index = cache.firstIndex(of: lowercaseCity) {
            // Cache hit
            cache.remove(at: index)
            cache.append(lowercaseCity)
            totalTime += 1
        } else {
            // Cache miss
            if cache.count >= cacheSize {
                cache.removeFirst()
            }
            cache.append(lowercaseCity)
            totalTime += 5
        }
    }
    
    return totalTime
}
