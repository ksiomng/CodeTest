func solution(_ s: String) -> String {
    return s.split(separator: " ", omittingEmptySubsequences: false)
            .map { word in
                if let first = word.first {
                    return first.isLetter ? first.uppercased() + word.dropFirst().lowercased() : word.lowercased()
                }
                return ""
            }
            .joined(separator: " ")
}
