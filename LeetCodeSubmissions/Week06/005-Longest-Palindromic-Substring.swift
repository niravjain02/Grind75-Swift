class Solution {
    func longestPalindrome(_ s: String) -> String {
        let characters = Array(s)
        guard !characters.isEmpty else {
            return ""
        }

        var bestStart = 0
        var bestLength = 1

        func expand(_ initialLeft: Int, _ initialRight: Int) -> (start: Int, length: Int) {
            var left = initialLeft
            var right = initialRight

            while left >= 0, right < characters.count, characters[left] == characters[right] {
                left -= 1
                right += 1
            }

            return (left + 1, right - left - 1)
        }

        for center in characters.indices {
            let odd = expand(center, center)
            if odd.length > bestLength {
                bestStart = odd.start
                bestLength = odd.length
            }

            let even = expand(center, center + 1)
            if even.length > bestLength {
                bestStart = even.start
                bestLength = even.length
            }
        }

        return String(characters[bestStart..<(bestStart + bestLength)])
    }
}
