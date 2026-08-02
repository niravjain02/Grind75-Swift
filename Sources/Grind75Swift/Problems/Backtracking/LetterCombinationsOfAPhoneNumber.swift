public enum LetterCombinationsOfAPhoneNumber {
    /// Returns every letter combination represented by the phone digits.
    ///
    /// - Complexity:
    ///   - Time: O(n * 4^n) including construction of the returned strings
    ///   - Space: O(n) auxiliary space for the current combination and recursion
    public static func solve(_ digits: String) -> [String] {
        guard !digits.isEmpty else {
            return []
        }

        let lettersByDigit: [Character: [Character]] = [
            "2": Array("abc"),
            "3": Array("def"),
            "4": Array("ghi"),
            "5": Array("jkl"),
            "6": Array("mno"),
            "7": Array("pqrs"),
            "8": Array("tuv"),
            "9": Array("wxyz")
        ]
        let digitCharacters = Array(digits)
        guard digitCharacters.allSatisfy({ lettersByDigit[$0] != nil }) else {
            return []
        }

        var combinations: [String] = []
        var current: [Character] = []

        func backtrack(_ index: Int) {
            if index == digitCharacters.count {
                combinations.append(String(current))
                return
            }

            for letter in lettersByDigit[digitCharacters[index]]! {
                current.append(letter)
                backtrack(index + 1)
                current.removeLast()
            }
        }

        backtrack(0)
        return combinations
    }
}
