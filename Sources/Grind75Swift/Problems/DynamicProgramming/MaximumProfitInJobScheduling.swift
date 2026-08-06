public enum MaximumProfitInJobScheduling {
    private struct Job {
        let start: Int
        let end: Int
        let profit: Int
    }

    /// Returns the greatest profit obtainable from non-overlapping jobs.
    ///
    /// - Complexity:
    ///   - Time: O(n log n)
    ///   - Space: O(n)
    public static func solve(
        startTime: [Int],
        endTime: [Int],
        profit: [Int]
    ) -> Int {
        guard startTime.count == endTime.count,
              startTime.count == profit.count else {
            return 0
        }

        let jobs = startTime.indices.map {
            Job(start: startTime[$0], end: endTime[$0], profit: profit[$0])
        }.sorted {
            if $0.end == $1.end {
                return $0.start < $1.start
            }
            return $0.end < $1.end
        }

        var bestProfit = Array(repeating: 0, count: jobs.count + 1)

        for index in jobs.indices {
            let job = jobs[index]
            var low = 0
            var high = index

            while low < high {
                let middle = low + (high - low) / 2

                if jobs[middle].end <= job.start {
                    low = middle + 1
                } else {
                    high = middle
                }
            }

            let includingCurrent = job.profit + bestProfit[low]
            bestProfit[index + 1] = max(bestProfit[index], includingCurrent)
        }

        return bestProfit[jobs.count]
    }
}
