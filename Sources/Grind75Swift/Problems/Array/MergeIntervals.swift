public enum MergeIntervals {
    /// Merges all overlapping intervals.
    ///
    /// - Complexity:
    ///   - Time: O(n log n)
    ///   - Space: O(n) for sorting and the returned intervals
    public static func solve(_ intervals: [[Int]]) -> [[Int]] {
        guard !intervals.isEmpty else {
            return []
        }

        let sortedIntervals = intervals.sorted {
            if $0[0] == $1[0] {
                return $0[1] < $1[1]
            }
            return $0[0] < $1[0]
        }

        var merged: [[Int]] = []
        merged.reserveCapacity(sortedIntervals.count)

        for interval in sortedIntervals {
            if let last = merged.last, interval[0] <= last[1] {
                merged[merged.count - 1][1] = max(last[1], interval[1])
            } else {
                merged.append(interval)
            }
        }

        return merged
    }
}
