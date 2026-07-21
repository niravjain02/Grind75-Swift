final class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }

        var frequencies: [Character: Int] = [:]

        for character in s {
            frequencies[character, default: 0] += 1
        }

        for character in t {
            guard let frequency = frequencies[character], frequency > 0 else {
                return false
            }

            if frequency == 1 {
                frequencies.removeValue(forKey: character)
            } else {
                frequencies[character] = frequency - 1
            }
        }

        return frequencies.isEmpty
    }
}
