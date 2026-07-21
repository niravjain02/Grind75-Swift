final class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let characters = s.lowercased().filter { $0.isLetter || $0.isNumber }
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
