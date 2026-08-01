class Solution {
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        let columns = min(m, n)
        let rows = max(m, n)
        var paths = Array(repeating: 1, count: columns)

        for _ in 1..<rows {
            for column in 1..<columns {
                paths[column] += paths[column - 1]
            }
        }

        return paths[columns - 1]
    }
}
