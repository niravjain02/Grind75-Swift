public enum CombinationSum {
    /// Returns all unique combinations whose values sum to `target`.
    ///
    /// Each candidate may be selected any number of times.
    ///
    /// - Complexity:
    ///   - Time: O(n^(t / m)) in the worst case, where `m` is the smallest candidate
    ///   - Space: O(t / m) auxiliary space for the recursion path
    public static func solve(_ candidates: [Int], target: Int) -> [[Int]] {
        guard target >= 0 else {
            return []
        }

        let sortedCandidates = Array(Set(candidates.filter { $0 > 0 })).sorted()
        var combinations: [[Int]] = []
        var current: [Int] = []

        func backtrack(startIndex: Int, remaining: Int) {
            if remaining == 0 {
                combinations.append(current)
                return
            }

            for index in startIndex..<sortedCandidates.count {
                let candidate = sortedCandidates[index]

                if candidate > remaining {
                    break
                }

                current.append(candidate)
                backtrack(startIndex: index, remaining: remaining - candidate)
                current.removeLast()
            }
        }

        backtrack(startIndex: 0, remaining: target)
        return combinations
    }
}
