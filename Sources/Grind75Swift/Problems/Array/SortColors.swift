public enum SortColors {
    /// Sorts values containing only 0, 1, and 2 in place.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(1)
    public static func solve(_ numbers: inout [Int]) {
        var nextZero = 0
        var current = 0
        var nextTwo = numbers.count - 1

        while current <= nextTwo {
            switch numbers[current] {
            case 0:
                numbers.swapAt(current, nextZero)
                nextZero += 1
                current += 1
            case 2:
                numbers.swapAt(current, nextTwo)
                nextTwo -= 1
            default:
                current += 1
            }
        }
    }
}
