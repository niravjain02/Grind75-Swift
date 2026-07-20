public final class ListNode {
    public var val: Int
    public var next: ListNode?

    public init(_ val: Int = 0, _ next: ListNode? = nil) {
        self.val = val
        self.next = next
    }
}

public enum MergeTwoSortedLists {
    /// Merges two ascending linked lists by reusing their existing nodes.
    ///
    /// - Complexity:
    ///   - Time: O(m + n)
    ///   - Auxiliary space: O(1)
    public static func solve(_ first: ListNode?, _ second: ListNode?) -> ListNode? {
        let dummyHead = ListNode()
        var tail = dummyHead
        var first = first
        var second = second

        while let firstNode = first, let secondNode = second {
            if firstNode.val <= secondNode.val {
                tail.next = firstNode
                first = firstNode.next
            } else {
                tail.next = secondNode
                second = secondNode.next
            }

            tail = tail.next!
        }

        tail.next = first ?? second
        return dummyHead.next
    }
}
