class Solution {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        let characters = Array(s)
        let pattern = Array(p)
        guard !pattern.isEmpty, pattern.count <= characters.count else {
            return []
        }

        var needed: [Character: Int] = [:]
        for character in pattern {
            needed[character, default: 0] += 1
        }

        var remaining = pattern.count
        var result: [Int] = []

        for right in characters.indices {
            let incoming = characters[right]
            if let count = needed[incoming] {
                if count > 0 {
                    remaining -= 1
                }
                needed[incoming] = count - 1
            }

            if right >= pattern.count {
                let outgoing = characters[right - pattern.count]
                if let count = needed[outgoing] {
                    if count >= 0 {
                        remaining += 1
                    }
                    needed[outgoing] = count + 1
                }
            }

            if right + 1 >= pattern.count, remaining == 0 {
                result.append(right - pattern.count + 1)
            }
        }

        return result
    }
}
