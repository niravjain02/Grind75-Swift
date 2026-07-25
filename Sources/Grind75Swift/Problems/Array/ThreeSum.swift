public enum ThreeSum {
    /// Returns all unique triplets whose values sum to zero.
    ///
    /// - Complexity:
    ///   - Time: O(n²)
    ///   - Space: O(n) for Swift's sorted copy, excluding the result
    public static func solve(_ numbers: [Int]) -> [[Int]] {
        guard numbers.count >= 3 else {
            return []
        }

        let sortedNumbers = numbers.sorted()
        var triplets: [[Int]] = []

        for firstIndex in 0..<(sortedNumbers.count - 2) {
            if firstIndex > 0,
               sortedNumbers[firstIndex] == sortedNumbers[firstIndex - 1] {
                continue
            }
            if sortedNumbers[firstIndex] > 0 {
                break
            }

            var left = firstIndex + 1
            var right = sortedNumbers.count - 1

            while left < right {
                let sum = sortedNumbers[firstIndex] + sortedNumbers[left] + sortedNumbers[right]

                if sum < 0 {
                    left += 1
                } else if sum > 0 {
                    right -= 1
                } else {
                    triplets.append([
                        sortedNumbers[firstIndex],
                        sortedNumbers[left],
                        sortedNumbers[right]
                    ])

                    repeat { left += 1 } while left < right &&
                        sortedNumbers[left] == sortedNumbers[left - 1]
                    repeat { right -= 1 } while left < right &&
                        sortedNumbers[right] == sortedNumbers[right + 1]
                }
            }
        }

        return triplets
    }
}
