public enum PartitionEqualSubsetSum {
    /// Returns whether the numbers can be split into two subsets with equal sums.
    ///
    /// - Complexity:
    ///   - Time: O(n * t), where t is half of the total sum
    ///   - Space: O(t)
    public static func solve(_ numbers: [Int]) -> Bool {
        guard numbers.allSatisfy({ $0 >= 0 }) else {
            return false
        }

        let total = numbers.reduce(0, +)

        guard total.isMultiple(of: 2) else {
            return false
        }

        let target = total / 2
        var reachable = Array(repeating: false, count: target + 1)
        reachable[0] = true

        for number in numbers where number <= target {
            for sum in stride(from: target, through: number, by: -1) {
                if reachable[sum - number] {
                    reachable[sum] = true
                }
            }

            if reachable[target] {
                return true
            }
        }

        return reachable[target]
    }
}
