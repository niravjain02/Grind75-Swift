public enum UniquePaths {
    /// Returns the number of paths from the top-left to bottom-right using only right and down moves.
    ///
    /// - Complexity:
    ///   - Time: O(m * n)
    ///   - Space: O(n)
    public static func solve(_ m: Int, _ n: Int) -> Int {
        guard m > 0, n > 0 else {
            return 0
        }

        let columns = min(m, n)
        let rows = max(m, n)
        var paths = Array(repeating: 1, count: columns)

        for _ in 1..<rows {
            for column in 1..<columns {
                paths[column] += paths[column - 1]
            }
        }

        return paths[columns - 1]
    }
}
