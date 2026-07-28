class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        let candidates = candidates.sorted()
        var combinations: [[Int]] = []
        var current: [Int] = []

        func backtrack(_ startIndex: Int, _ remaining: Int) {
            if remaining == 0 {
                combinations.append(current)
                return
            }

            for index in startIndex..<candidates.count {
                let candidate = candidates[index]

                if candidate > remaining {
                    break
                }

                current.append(candidate)
                backtrack(index, remaining - candidate)
                current.removeLast()
            }
        }

        backtrack(0, target)
        return combinations
    }
}
