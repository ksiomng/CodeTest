import Foundation

func solution(_ sizes: [[Int]]) -> Int {
    var maxWidth = 0
    var maxHeight = 0

    for size in sizes {
        let (w, h) = (size[0], size[1])
        let (longer, shorter) = w > h ? (w, h) : (h, w)

        maxWidth = max(maxWidth, longer)
        maxHeight = max(maxHeight, shorter)
    }

    return maxWidth * maxHeight
}
