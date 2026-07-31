public enum SpiralMatrix {
    /// Returns matrix values in clockwise spiral order.
    ///
    /// - Complexity:
    ///   - Time: O(m * n)
    ///   - Space: O(1) auxiliary, excluding the result
    public static func solve(_ matrix: [[Int]]) -> [Int] {
        guard !matrix.isEmpty, !matrix[0].isEmpty else {
            return []
        }

        var top = 0
        var bottom = matrix.count - 1
        var left = 0
        var right = matrix[0].count - 1
        var result: [Int] = []
        result.reserveCapacity(matrix.count * matrix[0].count)

        while top <= bottom && left <= right {
            for column in left...right {
                result.append(matrix[top][column])
            }
            top += 1

            if top <= bottom {
                for row in top...bottom {
                    result.append(matrix[row][right])
                }
            }
            right -= 1

            if top <= bottom && left <= right {
                for column in stride(from: right, through: left, by: -1) {
                    result.append(matrix[bottom][column])
                }
                bottom -= 1

                for row in stride(from: bottom, through: top, by: -1) {
                    result.append(matrix[row][left])
                }
                left += 1
            }
        }

        return result
    }
}
