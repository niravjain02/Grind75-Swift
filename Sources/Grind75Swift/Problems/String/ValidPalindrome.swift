public enum ValidPalindrome {
    /// Returns whether the letters and numbers form a palindrome when case is ignored.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(n)
    public static func solve(_ string: String) -> Bool {
        let characters = string.lowercased().filter { $0.isLetter || $0.isNumber }
        var left = characters.startIndex
        var right = characters.endIndex

        while left < right {
            right = characters.index(before: right)

            if left >= right {
                break
            }

            guard characters[left] == characters[right] else {
                return false
            }

            left = characters.index(after: left)
        }

        return true
    }
}
