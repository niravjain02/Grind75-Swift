final class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        var stack: [Int] = []
        var largestArea = 0

        for index in 0...heights.count {
            let currentHeight = index == heights.count ? 0 : heights[index]

            while let topIndex = stack.last, heights[topIndex] > currentHeight {
                let height = heights[stack.removeLast()]
                let leftBoundary = stack.last ?? -1
                let width = index - leftBoundary - 1
                largestArea = max(largestArea, height * width)
            }

            if index < heights.count {
                stack.append(index)
            }
        }

        return largestArea
    }
}
