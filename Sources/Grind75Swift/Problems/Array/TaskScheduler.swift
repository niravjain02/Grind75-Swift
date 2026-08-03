public enum TaskScheduler {
    /// Returns the fewest intervals needed to run all tasks with the given cooldown.
    ///
    /// - Complexity:
    ///   - Time: O(t), where t is the number of tasks
    ///   - Space: O(k), where k is the number of distinct task types
    public static func solve(_ tasks: [Character], cooldown: Int) -> Int {
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
        let effectiveCooldown = max(0, cooldown)
        let constrainedLength =
            (maximumFrequency - 1) * (effectiveCooldown + 1)
            + tasksWithMaximumFrequency

        return max(tasks.count, constrainedLength)
    }
}
