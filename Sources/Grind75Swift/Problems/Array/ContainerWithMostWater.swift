public enum ContainerWithMostWater {
    /// Returns the greatest area held between two vertical lines.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(1)
    public static func solve(_ heights: [Int]) -> Int {
        guard heights.count >= 2 else {
            return 0
        }

        var left = 0
        var right = heights.count - 1
        var maximumArea = 0

        while left < right {
            let height = min(heights[left], heights[right])
            maximumArea = max(maximumArea, height * (right - left))

            if heights[left] <= heights[right] {
                left += 1
            } else {
                right -= 1
            }
        }

        return maximumArea
    }
}
