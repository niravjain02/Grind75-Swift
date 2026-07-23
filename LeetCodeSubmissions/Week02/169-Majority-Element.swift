class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var candidate = 0
        var count = 0

        for number in nums {
            if count == 0 {
                candidate = number
            }

            count += number == candidate ? 1 : -1
        }

        return candidate
    }
}
