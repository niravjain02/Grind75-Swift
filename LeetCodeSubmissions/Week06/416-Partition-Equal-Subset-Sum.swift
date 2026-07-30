class Solution {
    func canPartition(_ nums: [Int]) -> Bool {
        let total = nums.reduce(0, +)

        guard total.isMultiple(of: 2) else {
            return false
        }

        let target = total / 2
        var reachable = Array(repeating: false, count: target + 1)
        reachable[0] = true

        for number in nums where number <= target {
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
