class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = [[]]

        for number in nums {
            let existingCount = result.count

            for index in 0..<existingCount {
                result.append(result[index] + [number])
            }
        }

        return result
    }
}
