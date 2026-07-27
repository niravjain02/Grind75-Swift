public final class MinStack {
    private var entries: [(value: Int, minimum: Int)] = []

    public init() {}

    /// Adds a value while recording the minimum at this stack depth.
    ///
    /// - Complexity: O(1) time
    public func push(_ value: Int) {
        let minimum = min(value, entries.last?.minimum ?? value)
        entries.append((value, minimum))
    }

    /// Removes the most recently added value.
    ///
    /// - Complexity: O(1) time
    public func pop() {
        entries.removeLast()
    }

    /// Returns the most recently added value.
    ///
    /// - Complexity: O(1) time
    public func top() -> Int {
        entries.last!.value
    }

    /// Returns the smallest value currently stored.
    ///
    /// - Complexity: O(1) time
    public func getMin() -> Int {
        entries.last!.minimum
    }
}
