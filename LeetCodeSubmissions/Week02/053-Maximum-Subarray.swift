class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        guard let first = nums.first else {
            return 0
        }

        var currentSum = first
        var bestSum = first

        for number in nums.dropFirst() {
            currentSum = max(number, currentSum + number)
            bestSum = max(bestSum, currentSum)
        }

        return bestSum
    }
}
