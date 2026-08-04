public enum MinimumWindowSubstring {
    /// Returns the shortest substring containing every target character frequency.
    ///
    /// - Complexity:
    ///   - Time: O(n + m), where n and m are the input lengths
    ///   - Space: O(n + k), where k is the number of distinct target characters
    public static func solve(_ source: String, target: String) -> String {
        let sourceCharacters = Array(source)
        let targetCharacters = Array(target)
        guard !targetCharacters.isEmpty,
              targetCharacters.count <= sourceCharacters.count else {
            return ""
        }

        var needed: [Character: Int] = [:]
        for character in targetCharacters {
            needed[character, default: 0] += 1
        }

        var missing = targetCharacters.count
        var left = 0
        var bestStart = 0
        var bestLength = Int.max

        for right in sourceCharacters.indices {
            let incoming = sourceCharacters[right]
            if let count = needed[incoming] {
                if count > 0 {
                    missing -= 1
                }
                needed[incoming] = count - 1
            }

            while missing == 0 {
                let windowLength = right - left + 1
                if windowLength < bestLength {
                    bestStart = left
                    bestLength = windowLength
                }

                let outgoing = sourceCharacters[left]
                left += 1
                if let count = needed[outgoing] {
                    needed[outgoing] = count + 1
                    if count + 1 > 0 {
                        missing += 1
                    }
                }
            }
        }

        guard bestLength != Int.max else {
            return ""
        }
        return String(sourceCharacters[bestStart..<(bestStart + bestLength)])
    }
}
