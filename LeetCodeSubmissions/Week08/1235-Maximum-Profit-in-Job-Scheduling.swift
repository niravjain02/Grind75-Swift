class Solution {
    private struct Job {
        let start: Int
        let end: Int
        let profit: Int
    }

    func jobScheduling(
        _ startTime: [Int],
        _ endTime: [Int],
        _ profit: [Int]
    ) -> Int {
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

            bestProfit[index + 1] = max(
                bestProfit[index],
                job.profit + bestProfit[low]
            )
        }

        return bestProfit[jobs.count]
    }
}
