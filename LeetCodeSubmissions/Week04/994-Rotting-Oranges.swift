class Solution {
    func orangesRotting(_ input: [[Int]]) -> Int {
        guard !input.isEmpty, !input[0].isEmpty else {
            return 0
        }

        var grid = input
        let rows = grid.count
        let columns = grid[0].count
        let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]
        var queue: [(Int, Int)] = []
        var queueIndex = 0
        var fresh = 0

        for row in 0..<rows {
            for column in 0..<columns {
                if grid[row][column] == 2 {
                    queue.append((row, column))
                } else if grid[row][column] == 1 {
                    fresh += 1
                }
            }
        }

        var minutes = 0

        while queueIndex < queue.count, fresh > 0 {
            let levelEnd = queue.count

            while queueIndex < levelEnd {
                let cell = queue[queueIndex]
                queueIndex += 1

                for (dr, dc) in directions {
                    let nextRow = cell.0 + dr
                    let nextColumn = cell.1 + dc

                    guard nextRow >= 0, nextRow < rows,
                          nextColumn >= 0, nextColumn < columns,
                          grid[nextRow][nextColumn] == 1 else {
                        continue
                    }

                    grid[nextRow][nextColumn] = 2
                    fresh -= 1
                    queue.append((nextRow, nextColumn))
                }
            }

            minutes += 1
        }

        return fresh == 0 ? minutes : -1
    }
}
