public enum MaximumSubarray {
    /// Returns the greatest sum among all contiguous nonempty subarrays.
    /// Returns zero for an empty array outside LeetCode's input constraints.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(1)
    public static func solve(_ numbers: [Int]) -> Int {
        guard let first = numbers.first else {
            return 0
        }

        var currentSum = first
        var bestSum = first

        for number in numbers.dropFirst() {
            currentSum = max(number, currentSum + number)
            bestSum = max(bestSum, currentSum)
        }

        return bestSum
    }
}
