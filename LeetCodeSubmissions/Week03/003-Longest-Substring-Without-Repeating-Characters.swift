class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var lastSeenIndex: [Character: Int] = [:]
        var windowStart = 0
        var bestLength = 0

        for (index, character) in s.enumerated() {
            if let previousIndex = lastSeenIndex[character],
               previousIndex >= windowStart {
                windowStart = previousIndex + 1
            }

            lastSeenIndex[character] = index
            bestLength = max(bestLength, index - windowStart + 1)
        }

        return bestLength
    }
}
