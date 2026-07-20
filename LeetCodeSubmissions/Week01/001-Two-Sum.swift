final class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var indexByNumber: [Int: Int] = [:]

        for (index, number) in nums.enumerated() {
            let complement = target - number

            if let complementIndex = indexByNumber[complement] {
                return [complementIndex, index]
            }

            indexByNumber[number] = index
        }

        return []
    }
}
