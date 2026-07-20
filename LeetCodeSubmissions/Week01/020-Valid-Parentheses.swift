final class Solution {
    func isValid(_ s: String) -> Bool {
        let openingBracketByClosingBracket: [Character: Character] = [
            ")": "(",
            "]": "[",
            "}": "{"
        ]
        var stack: [Character] = []

        for bracket in s {
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
