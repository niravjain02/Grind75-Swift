class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        let intervals = intervals.sorted {
            if $0[0] == $1[0] {
                return $0[1] < $1[1]
            }
            return $0[0] < $1[0]
        }

        var merged: [[Int]] = []

        for interval in intervals {
            if let last = merged.last, interval[0] <= last[1] {
                merged[merged.count - 1][1] = max(last[1], interval[1])
            } else {
                merged.append(interval)
            }
        }

        return merged
    }
}
