public enum ZeroOneMatrix {
    /// Returns each cell's distance to its nearest zero.
    ///
    /// - Complexity:
    ///   - Time: O(rows * columns)
    ///   - Space: O(rows * columns)
    public static func solve(_ matrix: [[Int]]) -> [[Int]] {
        guard !matrix.isEmpty, !matrix[0].isEmpty else {
            return matrix
        }

        let rowCount = matrix.count
        let columnCount = matrix[0].count
        var distances = Array(
            repeating: Array(repeating: -1, count: columnCount),
            count: rowCount
        )
        var queue: [(row: Int, column: Int)] = []

        for row in 0..<rowCount {
            for column in 0..<columnCount where matrix[row][column] == 0 {
                distances[row][column] = 0
                queue.append((row, column))
            }
        }

        let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]
        var head = 0

        while head < queue.count {
            let cell = queue[head]
            head += 1

            for (rowOffset, columnOffset) in directions {
                let nextRow = cell.row + rowOffset
                let nextColumn = cell.column + columnOffset

                guard nextRow >= 0, nextRow < rowCount,
                      nextColumn >= 0, nextColumn < columnCount,
                      distances[nextRow][nextColumn] == -1 else {
                    continue
                }

                distances[nextRow][nextColumn] = distances[cell.row][cell.column] + 1
                queue.append((nextRow, nextColumn))
            }
        }

        return distances
    }
}
