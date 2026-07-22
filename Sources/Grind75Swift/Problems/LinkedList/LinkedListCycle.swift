public enum LinkedListCycle {
    /// Returns whether following next pointers eventually revisits a node.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(1)
    public static func solve(_ head: ListNode?) -> Bool {
        var slow = head
        var fast = head

        while let nextFast = fast?.next {
            slow = slow?.next
            fast = nextFast.next

            if slow === fast {
                return true
            }
        }

        return false
    }
}
