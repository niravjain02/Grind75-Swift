class Solution {
    func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
        guard !tasks.isEmpty else {
            return 0
        }

        var frequencies: [Character: Int] = [:]
        for task in tasks {
            frequencies[task, default: 0] += 1
        }

        let maximumFrequency = frequencies.values.max() ?? 0
        let tasksWithMaximumFrequency = frequencies.values.reduce(0) {
            $0 + ($1 == maximumFrequency ? 1 : 0)
        }
        let constrainedLength =
            (maximumFrequency - 1) * (n + 1)
            + tasksWithMaximumFrequency

        return max(tasks.count, constrainedLength)
    }
}
