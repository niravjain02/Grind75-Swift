/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ x: Int) {
 *         self.val = x
 *         self.next = nil
 *     }
 * }
 */
final class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
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
