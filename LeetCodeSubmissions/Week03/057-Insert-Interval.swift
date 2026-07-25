class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var result: [[Int]] = []
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
