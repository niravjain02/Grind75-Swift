public enum LongestPalindrome {
    /// Returns the maximum palindrome length constructible from the characters.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(k), where k is the number of distinct characters
    public static func solve(_ string: String) -> Int {
        var unpairedCharacters: Set<Character> = []
        var length = 0

        for character in string {
            if unpairedCharacters.remove(character) != nil {
                length += 2
            } else {
                unpairedCharacters.insert(character)
            }
        }

        return length + (unpairedCharacters.isEmpty ? 0 : 1)
    }
}
