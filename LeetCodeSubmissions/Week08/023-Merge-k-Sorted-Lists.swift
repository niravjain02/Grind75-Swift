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
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        var heap: [ListNode] = []

        func insert(_ node: ListNode) {
            heap.append(node)
            var child = heap.count - 1

            while child > 0 {
                let parent = (child - 1) / 2
                guard heap[child].val < heap[parent].val else { break }
                heap.swapAt(child, parent)
                child = parent
            }
        }

        func removeMinimum() -> ListNode {
            if heap.count == 1 { return heap.removeLast() }

            let minimum = heap[0]
            heap[0] = heap.removeLast()
            var parent = 0

            while true {
                let left = parent * 2 + 1
                guard left < heap.count else { break }
                let right = left + 1
                let smaller = right < heap.count && heap[right].val < heap[left].val ? right : left
                guard heap[smaller].val < heap[parent].val else { break }
                heap.swapAt(parent, smaller)
                parent = smaller
            }

            return minimum
        }

        for case let node? in lists {
            insert(node)
        }

        let dummyHead = ListNode()
        var tail = dummyHead

        while !heap.isEmpty {
            let node = removeMinimum()
            tail.next = node
            tail = node
            if let next = node.next {
                insert(next)
            }
        }

        return dummyHead.next
    }
}
