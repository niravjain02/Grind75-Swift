public enum ContainsDuplicate {
    /// Returns true when any value occurs more than once.
    ///
    /// - Complexity:
    ///   - Time: O(n) average
    ///   - Space: O(n)
    public static func solve(_ numbers: [Int]) -> Bool {
        var seen: Set<Int> = []

        for number in numbers {
            guard seen.insert(number).inserted else {
                return true
            }
        }

        return false
    }
}
