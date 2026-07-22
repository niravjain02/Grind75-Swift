final class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        var result = image
        let originalColor = result[sr][sc]

        guard originalColor != color else {
            return result
        }

        var queue = [(sr, sc)]
        var nextIndex = 0
        result[sr][sc] = color

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

                result[neighborRow][neighborColumn] = color
                queue.append((neighborRow, neighborColumn))
            }
        }

        return result
    }
}
