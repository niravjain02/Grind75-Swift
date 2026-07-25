class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count >= 3 else {
            return []
        }

        let numbers = nums.sorted()
        var result: [[Int]] = []

        for first in 0..<(numbers.count - 2) {
            if first > 0, numbers[first] == numbers[first - 1] {
                continue
            }
            if numbers[first] > 0 {
                break
            }

            var left = first + 1
            var right = numbers.count - 1

            while left < right {
                let sum = numbers[first] + numbers[left] + numbers[right]

                if sum < 0 {
                    left += 1
                } else if sum > 0 {
                    right -= 1
                } else {
                    result.append([numbers[first], numbers[left], numbers[right]])

                    repeat { left += 1 } while left < right && numbers[left] == numbers[left - 1]
                    repeat { right -= 1 } while left < right && numbers[right] == numbers[right + 1]
                }
            }
        }

        return result
    }
}
