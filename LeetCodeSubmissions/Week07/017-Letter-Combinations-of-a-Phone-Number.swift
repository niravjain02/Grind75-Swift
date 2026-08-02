class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        guard !digits.isEmpty else {
            return []
        }

        let lettersByDigit: [Character: [Character]] = [
            "2": Array("abc"), "3": Array("def"), "4": Array("ghi"),
            "5": Array("jkl"), "6": Array("mno"), "7": Array("pqrs"),
            "8": Array("tuv"), "9": Array("wxyz")
        ]
        let digitCharacters = Array(digits)
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
