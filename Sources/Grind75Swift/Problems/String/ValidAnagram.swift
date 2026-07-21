public enum ValidAnagram {
    /// Returns whether both strings contain the same characters with the same frequencies.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(k), where k is the number of distinct characters
    public static func solve(_ first: String, _ second: String) -> Bool {
        guard first.count == second.count else {
            return false
        }

        var frequencies: [Character: Int] = [:]

        for character in first {
            frequencies[character, default: 0] += 1
        }

        for character in second {
            guard let frequency = frequencies[character], frequency > 0 else {
                return false
            }

            if frequency == 1 {
                frequencies.removeValue(forKey: character)
            } else {
                frequencies[character] = frequency - 1
            }
        }

        return frequencies.isEmpty
    }
}
