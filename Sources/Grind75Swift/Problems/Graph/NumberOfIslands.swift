public enum NumberOfIslands {
    /// Returns the number of four-directionally connected land components.
    ///
    /// - Complexity:
    ///   - Time: O(m * n)
    ///   - Space: O(m * n) for the mutable grid copy and traversal stack
    public static func solve(_ input: [[Character]]) -> Int {
        guard !input.isEmpty, !input[0].isEmpty else {
            return 0
        }

        var grid = input
        let rowCount = grid.count
        let columnCount = grid[0].count
        let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]
        var islandCount = 0

        for row in 0..<rowCount {
            for column in 0..<columnCount where grid[row][column] == "1" {
                islandCount += 1
                grid[row][column] = "0"
                var stack = [(row, column)]

                while let cell = stack.popLast() {
                    for (rowOffset, columnOffset) in directions {
                        let nextRow = cell.0 + rowOffset
                        let nextColumn = cell.1 + columnOffset

                        guard nextRow >= 0, nextRow < rowCount,
                              nextColumn >= 0, nextColumn < columnCount,
                              grid[nextRow][nextColumn] == "1" else {
                            continue
                        }

                        grid[nextRow][nextColumn] = "0"
                        stack.append((nextRow, nextColumn))
                    }
                }
            }
        }

        return islandCount
    }
}
