class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1

        while left <= right {
            let middle = left + (right - left) / 2

            if nums[middle] == target {
                return middle
            }

            if nums[left] <= nums[middle] {
                if nums[left] <= target, target < nums[middle] {
                    right = middle - 1
                } else {
                    left = middle + 1
                }
            } else {
                if nums[middle] < target, target <= nums[right] {
                    left = middle + 1
                } else {
                    right = middle - 1
                }
            }
        }

        return -1
    }
}
