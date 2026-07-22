public enum FloodFill {
    /// Recolors the four-directionally connected component containing the start cell.
    ///
    /// - Complexity:
    ///   - Time: O(m * n)
    ///   - Space: O(m * n)
    public static func solve(
        _ image: [[Int]],
        startRow: Int,
        startColumn: Int,
        newColor: Int
    ) -> [[Int]] {
        guard !image.isEmpty,
              !image[0].isEmpty,
              image.indices.contains(startRow),
              image[startRow].indices.contains(startColumn) else {
            return image
        }

        var result = image
        let originalColor = result[startRow][startColumn]

        guard originalColor != newColor else {
            return result
        }

        var queue = [(startRow, startColumn)]
        var nextIndex = 0
        result[startRow][startColumn] = newColor

        while nextIndex < queue.count {
            let (row, column) = queue[nextIndex]
            nextIndex += 1

            let neighbors = [
                (row - 1, column),
                (row + 1, column),
                (row, column - 1),
                (row, column + 1)
            ]

            for (neighborRow, neighborColumn) in neighbors {
                guard result.indices.contains(neighborRow),
                      result[neighborRow].indices.contains(neighborColumn),
                      result[neighborRow][neighborColumn] == originalColor else {
                    continue
                }

                result[neighborRow][neighborColumn] = newColor
                queue.append((neighborRow, neighborColumn))
            }
        }

        return result
    }
}
