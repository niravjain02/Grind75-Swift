/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil }
 *     public init(_ val: Int) { self.val = val; self.next = nil }
 *     public init(_ val: Int, _ next: ListNode?) {
 *         self.val = val
 *         self.next = next
 *     }
 * }
 */
final class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let dummyHead = ListNode()
        var tail = dummyHead
        var list1 = list1
        var list2 = list2

        while let firstNode = list1, let secondNode = list2 {
            if firstNode.val <= secondNode.val {
                tail.next = firstNode
                list1 = firstNode.next
            } else {
                tail.next = secondNode
                list2 = secondNode.next
            }

            tail = tail.next!
        }

        tail.next = list1 ?? list2
        return dummyHead.next
    }
}
