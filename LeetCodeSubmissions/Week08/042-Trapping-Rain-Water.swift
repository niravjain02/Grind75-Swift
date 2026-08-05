class Solution {
    func trap(_ height: [Int]) -> Int {
        guard height.count >= 3 else {
            return 0
        }

        var left = 0
        var right = height.count - 1
        var leftMaximum = 0
        var rightMaximum = 0
        var trappedWater = 0

        while left < right {
            if height[left] <= height[right] {
                leftMaximum = max(leftMaximum, height[left])
                trappedWater += leftMaximum - height[left]
                left += 1
            } else {
                rightMaximum = max(rightMaximum, height[right])
                trappedWater += rightMaximum - height[right]
                right -= 1
            }
        }

        return trappedWater
    }
}
