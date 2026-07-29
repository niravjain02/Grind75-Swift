public enum Permutations {
    /// Returns every ordering of the distinct values in `nums`.
    ///
    /// - Complexity:
    ///   - Time: O(n * n!)
    ///   - Space: O(n) auxiliary space, excluding the returned permutations
    public static func solve(_ nums: [Int]) -> [[Int]] {
        var permutations: [[Int]] = []
        var current: [Int] = []
        var isUsed = Array(repeating: false, count: nums.count)

        func backtrack() {
            if current.count == nums.count {
                permutations.append(current)
                return
            }

            for index in nums.indices where !isUsed[index] {
                isUsed[index] = true
                current.append(nums[index])

                backtrack()

                current.removeLast()
                isUsed[index] = false
            }
        }

        backtrack()
        return permutations
    }
}
