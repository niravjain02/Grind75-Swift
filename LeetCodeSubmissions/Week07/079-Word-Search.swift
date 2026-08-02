class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        var board = board
        let letters = Array(word)
        let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]

        func search(_ row: Int, _ column: Int, _ index: Int) -> Bool {
            guard row >= 0, row < board.count,
                  column >= 0, column < board[0].count,
                  board[row][column] == letters[index] else {
                return false
            }
            if index == letters.count - 1 {
                return true
            }

            let original = board[row][column]
            board[row][column] = "#"
            defer { board[row][column] = original }

            for (rowOffset, columnOffset) in directions {
                if search(row + rowOffset, column + columnOffset, index + 1) {
                    return true
                }
            }
            return false
        }

        for row in board.indices {
            for column in board[0].indices {
                if search(row, column, 0) {
                    return true
                }
            }
        }
        return false
    }
}
