public enum MajorityElement {
    /// Returns the value that appears more than half the time.
    ///
    /// The input is expected to be nonempty and to contain a majority element.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(1)
    public static func solve(_ numbers: [Int]) -> Int {
        var candidate = 0
        var count = 0

        for number in numbers {
            if count == 0 {
                candidate = number
            }

            count += number == candidate ? 1 : -1
        }

        return candidate
    }
}
