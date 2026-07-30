class Solution {
    private struct TrieNode {
        var children: [UInt8: Int] = [:]
        var isWord = false
    }

    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        var trie = [TrieNode()]

        for word in wordDict {
            var nodeIndex = 0

            for byte in word.utf8 {
                if let childIndex = trie[nodeIndex].children[byte] {
                    nodeIndex = childIndex
                } else {
                    let childIndex = trie.count
                    trie.append(TrieNode())
                    trie[nodeIndex].children[byte] = childIndex
                    nodeIndex = childIndex
                }
            }

            if !word.isEmpty {
                trie[nodeIndex].isWord = true
            }
        }

        let bytes = Array(s.utf8)
        var canSegment = Array(repeating: false, count: bytes.count + 1)
        canSegment[0] = true

        for start in bytes.indices where canSegment[start] {
            var nodeIndex = 0
            var end = start

            while end < bytes.count,
                  let childIndex = trie[nodeIndex].children[bytes[end]] {
                nodeIndex = childIndex
                end += 1

                if trie[nodeIndex].isWord {
                    canSegment[end] = true
                }
            }

            if canSegment[bytes.count] {
                return true
            }
        }

        return canSegment[bytes.count]
    }
}
