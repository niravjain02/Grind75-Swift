public enum MiddleOfTheLinkedList {
    /// Returns the middle node, or the second middle node for an even-length list.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(1)
    public static func solve(_ head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head

        while fast != nil, fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        return slow
    }
}
