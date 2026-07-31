public enum Subsets {
    /// Returns every subset of the distinct values in `nums`.
    ///
    /// - Complexity:
    ///   - Time: O(n * 2^n)
    ///   - Space: O(n * 2^n) for the returned subsets
    public static func solve(_ nums: [Int]) -> [[Int]] {
        var subsets: [[Int]] = [[]]

        for number in nums {
            let existingCount = subsets.count

            for index in 0..<existingCount {
                subsets.append(subsets[index] + [number])
            }
        }

        return subsets
    }
}
