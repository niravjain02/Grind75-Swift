class Solution {
    func sortColors(_ nums: inout [Int]) {
        var nextZero = 0
        var current = 0
        var nextTwo = nums.count - 1

        while current <= nextTwo {
            switch nums[current] {
            case 0:
                nums.swapAt(current, nextZero)
                nextZero += 1
                current += 1
            case 2:
                nums.swapAt(current, nextTwo)
                nextTwo -= 1
            default:
                current += 1
            }
        }
    }
}
