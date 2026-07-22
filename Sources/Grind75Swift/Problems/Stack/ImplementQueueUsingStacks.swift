public final class QueueUsingStacks {
    private var input: [Int] = []
    private var output: [Int] = []

    public init() {}

    /// Adds an element to the back of the queue.
    ///
    /// - Complexity: O(1) time
    public func push(_ value: Int) {
        input.append(value)
    }

    /// Removes and returns the element at the front of the queue.
    ///
    /// - Complexity: O(1) amortized time
    public func pop() -> Int {
        moveToOutputIfNeeded()
        return output.removeLast()
    }

    /// Returns the element at the front of the queue without removing it.
    ///
    /// - Complexity: O(1) amortized time
    public func peek() -> Int {
        moveToOutputIfNeeded()
        return output.last!
    }

    /// Returns whether the queue contains no elements.
    ///
    /// - Complexity: O(1) time
    public func empty() -> Bool {
        input.isEmpty && output.isEmpty
    }

    private func moveToOutputIfNeeded() {
        guard output.isEmpty else {
            return
        }

        while let value = input.popLast() {
            output.append(value)
        }
    }
}
