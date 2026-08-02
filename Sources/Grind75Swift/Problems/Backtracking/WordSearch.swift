public enum WordSearch {
    /// Returns whether `word` can be formed by adjacent board cells without reuse.
    ///
    /// - Complexity:
    ///   - Time: O(m * n * 3^l), where `l` is the word length
    ///   - Space: O(m * n + l) for the mutable board copy and recursion stack
    public static func solve(_ input: [[Character]], word: String) -> Bool {
        guard !word.isEmpty else {
            return true
        }
        guard !input.isEmpty else {
            return false
        }

        var board = input
        let letters = Array(word)
        let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]

        func search(row: Int, column: Int, letterIndex: Int) -> Bool {
            guard row >= 0, row < board.count,
                  column >= 0, column < board[row].count,
                  board[row][column] == letters[letterIndex] else {
                return false
            }
            if letterIndex == letters.count - 1 {
                return true
            }

            let original = board[row][column]
            board[row][column] = "#"
            defer { board[row][column] = original }

            for (rowOffset, columnOffset) in directions {
                if search(
                    row: row + rowOffset,
                    column: column + columnOffset,
                    letterIndex: letterIndex + 1
                ) {
                    return true
                }
            }
            return false
        }

        for row in board.indices {
            for column in board[row].indices {
                if search(row: row, column: column, letterIndex: 0) {
                    return true
                }
            }
        }
        return false
    }
}
