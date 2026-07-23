class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var unpairedCharacters: Set<Character> = []
        var length = 0

        for character in s {
            if unpairedCharacters.remove(character) != nil {
                length += 2
            } else {
                unpairedCharacters.insert(character)
            }
        }

        return length + (unpairedCharacters.isEmpty ? 0 : 1)
    }
}
