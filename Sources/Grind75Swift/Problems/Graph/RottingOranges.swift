public enum RottingOranges {
    /// Returns the minimum number of minutes needed to rot every fresh orange.
    ///
    /// - Complexity:
    ///   - Time: O(m * n)
    ///   - Space: O(m * n) for the mutable grid copy and breadth-first queue
    public static func solve(_ input: [[Int]]) -> Int {
        guard !input.isEmpty, !input[0].isEmpty else {
            return 0
        }

        var grid = input
        let rowCount = grid.count
        let columnCount = grid[0].count
        let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]
        var queue: [(row: Int, column: Int)] = []
        var queueIndex = 0
        var freshCount = 0

        for row in 0..<rowCount {
            for column in 0..<columnCount {
                if grid[row][column] == 2 {
                    queue.append((row, column))
                } else if grid[row][column] == 1 {
                    freshCount += 1
                }
            }
        }

        var minutes = 0

        while queueIndex < queue.count, freshCount > 0 {
            let levelEnd = queue.count
            var rottedThisMinute = false

            while queueIndex < levelEnd {
                let cell = queue[queueIndex]
                queueIndex += 1

                for (rowOffset, columnOffset) in directions {
                    let nextRow = cell.row + rowOffset
                    let nextColumn = cell.column + columnOffset

                    guard nextRow >= 0, nextRow < rowCount,
                          nextColumn >= 0, nextColumn < columnCount,
                          grid[nextRow][nextColumn] == 1 else {
                        continue
                    }

                    grid[nextRow][nextColumn] = 2
                    freshCount -= 1
                    rottedThisMinute = true
                    queue.append((nextRow, nextColumn))
                }
            }

            if rottedThisMinute {
                minutes += 1
            }
        }

        return freshCount == 0 ? minutes : -1
    }
}
