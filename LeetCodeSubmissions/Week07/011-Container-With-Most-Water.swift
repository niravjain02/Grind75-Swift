class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1
        var maximumArea = 0

        while left < right {
            maximumArea = max(
                maximumArea,
                min(height[left], height[right]) * (right - left)
            )

            if height[left] <= height[right] {
                left += 1
            } else {
                right -= 1
            }
        }

        return maximumArea
    }
}
