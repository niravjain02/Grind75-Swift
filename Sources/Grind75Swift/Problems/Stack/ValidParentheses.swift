public enum ValidParentheses {
    /// Returns whether every bracket is closed in the correct order.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(n)
    public static func solve(_ string: String) -> Bool {
        let openingBracketByClosingBracket: [Character: Character] = [
            ")": "(",
            "]": "[",
            "}": "{"
        ]
        var stack: [Character] = []

        for bracket in string {
            if let expectedOpeningBracket = openingBracketByClosingBracket[bracket] {
                guard stack.popLast() == expectedOpeningBracket else {
                    return false
                }
            } else {
                stack.append(bracket)
            }
        }

        return stack.isEmpty
    }
}
