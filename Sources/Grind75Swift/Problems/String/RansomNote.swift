public enum RansomNote {
    public static func solve(_ ransomNote: String, _ magazine: String) -> Bool {
        var available = Array(repeating: 0, count: 26)
        let lowercaseA = Character("a").asciiValue!

        for character in magazine {
            guard let asciiValue = character.asciiValue else {
                return false
            }
            available[Int(asciiValue - lowercaseA)] += 1
        }

        for character in ransomNote {
            guard let asciiValue = character.asciiValue else {
                return false
            }
            let index = Int(asciiValue - lowercaseA)

            guard available[index] > 0 else {
                return false
            }
            available[index] -= 1
        }

        return true
    }
}
