class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        let source = Array(s)
        let target = Array(t)
        guard !target.isEmpty, target.count <= source.count else {
            return ""
        }

        var needed: [Character: Int] = [:]
        for character in target {
            needed[character, default: 0] += 1
        }

        var missing = target.count
        var left = 0
        var bestStart = 0
        var bestLength = Int.max

        for right in source.indices {
            let incoming = source[right]
            if let count = needed[incoming] {
                if count > 0 {
                    missing -= 1
                }
                needed[incoming] = count - 1
            }

            while missing == 0 {
                let windowLength = right - left + 1
                if windowLength < bestLength {
                    bestStart = left
                    bestLength = windowLength
                }

                let outgoing = source[left]
                left += 1
                if let count = needed[outgoing] {
                    needed[outgoing] = count + 1
                    if count + 1 > 0 {
                        missing += 1
                    }
                }
            }
        }

        guard bestLength != Int.max else {
            return ""
        }
        return String(source[bestStart..<(bestStart + bestLength)])
    }
}
