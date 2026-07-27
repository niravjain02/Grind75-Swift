class Solution {
    func numIslands(_ input: [[Character]]) -> Int {
        guard !input.isEmpty, !input[0].isEmpty else {
            return 0
        }

        var grid = input
        let rows = grid.count
        let columns = grid[0].count
        let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]
        var islands = 0

        for row in 0..<rows {
            for column in 0..<columns where grid[row][column] == "1" {
                islands += 1
                grid[row][column] = "0"
                var stack = [(row, column)]

                while let cell = stack.popLast() {
                    for (dr, dc) in directions {
                        let nextRow = cell.0 + dr
                        let nextColumn = cell.1 + dc

                        guard nextRow >= 0, nextRow < rows,
                              nextColumn >= 0, nextColumn < columns,
                              grid[nextRow][nextColumn] == "1" else {
                            continue
                        }

                        grid[nextRow][nextColumn] = "0"
                        stack.append((nextRow, nextColumn))
                    }
                }
            }
        }

        return islands
    }
}
