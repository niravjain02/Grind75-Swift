public enum FindAllAnagramsInAString {
    /// Returns the character offsets where an anagram of `pattern` begins in `string`.
    ///
    /// - Complexity:
    ///   - Time: O(n + m), where n is the string length and m is the pattern length
    ///   - Space: O(n + k), where k is the number of distinct pattern characters
    public static func solve(_ string: String, pattern: String) -> [Int] {
        let characters = Array(string)
        let patternCharacters = Array(pattern)
        guard !patternCharacters.isEmpty,
              patternCharacters.count <= characters.count else {
            return []
        }

        var needed: [Character: Int] = [:]
        for character in patternCharacters {
            needed[character, default: 0] += 1
        }

        var remaining = patternCharacters.count
        var result: [Int] = []

        for right in characters.indices {
            let incoming = characters[right]
            if let count = needed[incoming] {
                if count > 0 {
                    remaining -= 1
                }
                needed[incoming] = count - 1
            }

            if right >= patternCharacters.count {
                let outgoing = characters[right - patternCharacters.count]
                if let count = needed[outgoing] {
                    if count >= 0 {
                        remaining += 1
                    }
                    needed[outgoing] = count + 1
                }
            }

            if right + 1 >= patternCharacters.count, remaining == 0 {
                result.append(right - patternCharacters.count + 1)
            }
        }

        return result
    }
}
