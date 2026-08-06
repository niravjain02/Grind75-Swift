public enum WordLadder {
    /// Returns the number of words in the shortest valid transformation sequence.
    ///
    /// - Complexity:
    ///   - Time: O(n * l * 26), where `n` is the number of words and `l` is their length
    ///   - Space: O(n * l)
    public static func solve(
        _ beginWord: String,
        _ endWord: String,
        wordList: [String]
    ) -> Int {
        if beginWord == endWord {
            return 1
        }

        var unvisited = Set(wordList)
        guard unvisited.contains(endWord) else {
            return 0
        }

        unvisited.remove(beginWord)
        var queue: [(word: String, length: Int)] = [(beginWord, 1)]
        var head = 0

        while head < queue.count {
            let (word, length) = queue[head]
            head += 1
            var letters = Array(word.utf8)

            for index in letters.indices {
                let originalLetter = letters[index]

                for letter in UInt8(ascii: "a")...UInt8(ascii: "z")
                where letter != originalLetter {
                    letters[index] = letter
                    let candidate = String(decoding: letters, as: UTF8.self)

                    if candidate == endWord {
                        return length + 1
                    }

                    if unvisited.remove(candidate) != nil {
                        queue.append((candidate, length + 1))
                    }
                }

                letters[index] = originalLetter
            }
        }

        return 0
    }
}
