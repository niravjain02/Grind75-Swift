public enum LongestSubstringWithoutRepeatingCharacters {
    /// Returns the maximum length of a substring containing no repeated character.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(k), where k is the number of distinct characters
    public static func solve(_ string: String) -> Int {
        var lastSeenIndex: [Character: Int] = [:]
        var windowStart = 0
        var bestLength = 0

        for (index, character) in string.enumerated() {
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
