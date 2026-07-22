public enum BinarySearch {
    /// Returns the index of `target` in an ascending sorted array, or -1 when absent.
    ///
    /// - Complexity:
    ///   - Time: O(log n)
    ///   - Space: O(1)
    public static func solve(_ nums: [Int], target: Int) -> Int {
        var left = 0
        var right = nums.count - 1

        while left <= right {
            let middle = left + (right - left) / 2

            if nums[middle] == target {
                return middle
            } else if nums[middle] < target {
                left = middle + 1
            } else {
                right = middle - 1
            }
        }

        return -1
    }
}
