public enum TwoSum {
    /// Returns the indices of two numbers whose sum equals `target`.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(n)
    public static func solve(_ nums: [Int], target: Int) -> [Int] {
        var indexByNumber: [Int: Int] = [:]

        for (index, number) in nums.enumerated() {
            let complement = target - number

            if let complementIndex = indexByNumber[complement] {
                return [complementIndex, index]
            }

            indexByNumber[number] = index
        }

        return []
    }
}
