class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var seen: Set<Int> = []

        for number in nums {
            guard seen.insert(number).inserted else {
                return true
            }
        }

        return false
    }
}
