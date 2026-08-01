public enum LongestPalindromicSubstring {
    /// Returns a longest contiguous substring that reads the same in both directions.
    ///
    /// - Complexity:
    ///   - Time: O(n²)
    ///   - Space: O(n) for random-access character storage
    public static func solve(_ s: String) -> String {
        let characters = Array(s)
        guard !characters.isEmpty else {
            return ""
        }

        var bestStart = 0
        var bestLength = 1

        func expandedBounds(left initialLeft: Int, right initialRight: Int) -> (start: Int, length: Int) {
            var left = initialLeft
            var right = initialRight

            while left >= 0, right < characters.count, characters[left] == characters[right] {
                left -= 1
                right += 1
            }

            return (left + 1, right - left - 1)
        }

        for center in characters.indices {
            let odd = expandedBounds(left: center, right: center)
            if odd.length > bestLength {
                bestStart = odd.start
                bestLength = odd.length
            }

            let even = expandedBounds(left: center, right: center + 1)
            if even.length > bestLength {
                bestStart = even.start
                bestLength = even.length
            }
        }

        return String(characters[bestStart..<(bestStart + bestLength)])
    }
}
