class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var permutations: [[Int]] = []
        var current: [Int] = []
        var isUsed = Array(repeating: false, count: nums.count)

        func backtrack() {
            if current.count == nums.count {
                permutations.append(current)
                return
            }

            for index in nums.indices where !isUsed[index] {
                isUsed[index] = true
                current.append(nums[index])

                backtrack()

                current.removeLast()
                isUsed[index] = false
            }
        }

        backtrack()
        return permutations
    }
}
