public enum ReverseLinkedList {
    /// Reverses a singly linked list in place and returns its new head.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Auxiliary space: O(1)
    public static func solve(_ head: ListNode?) -> ListNode? {
        var previous: ListNode?
        var current = head

        while let node = current {
            let next = node.next
            node.next = previous
            previous = node
            current = next
        }

        return previous
    }
}
