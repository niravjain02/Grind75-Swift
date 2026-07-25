public enum InsertInterval {
    /// Inserts an interval into sorted, non-overlapping intervals and merges overlaps.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(n) for the returned intervals
    public static func solve(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        result.reserveCapacity(intervals.count + 1)

        var index = 0
        var mergedStart = newInterval[0]
        var mergedEnd = newInterval[1]

        while index < intervals.count && intervals[index][1] < mergedStart {
            result.append(intervals[index])
            index += 1
        }

        while index < intervals.count && intervals[index][0] <= mergedEnd {
            mergedStart = min(mergedStart, intervals[index][0])
            mergedEnd = max(mergedEnd, intervals[index][1])
            index += 1
        }

        result.append([mergedStart, mergedEnd])

        while index < intervals.count {
            result.append(intervals[index])
            index += 1
        }

        return result
    }
}
