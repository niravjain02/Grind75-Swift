public enum LargestRectangleInHistogram {
    /// Returns the largest rectangle formed by consecutive histogram bars.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(n)
    public static func solve(_ heights: [Int]) -> Int {
        var increasingIndices: [Int] = []
        var largestArea = 0

        for index in 0...heights.count {
            let currentHeight = index == heights.count ? 0 : heights[index]

            while let topIndex = increasingIndices.last,
                  heights[topIndex] > currentHeight {
                let height = heights[increasingIndices.removeLast()]
                let leftBoundary = increasingIndices.last ?? -1
                let width = index - leftBoundary - 1
                largestArea = max(largestArea, height * width)
            }

            if index < heights.count {
                increasingIndices.append(index)
            }
        }

        return largestArea
    }
}
