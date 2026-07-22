class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var available = Array(repeating: 0, count: 26)
        let lowercaseA = Character("a").asciiValue!

        for character in magazine {
            let index = Int(character.asciiValue! - lowercaseA)
            available[index] += 1
        }

        for character in ransomNote {
            let index = Int(character.asciiValue! - lowercaseA)

            guard available[index] > 0 else {
                return false
            }
            available[index] -= 1
        }

        return true
    }
}
