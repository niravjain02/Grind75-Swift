public enum MergeKSortedLists {
    /// Merges ascending linked lists by repeatedly taking the smallest current node.
    ///
    /// - Complexity:
    ///   - Time: O(n log k), where n is the total node count and k is the list count
    ///   - Auxiliary space: O(k)
    public static func solve(_ lists: [ListNode?]) -> ListNode? {
        var heap: [ListNode] = []

        for case let node? in lists {
            insert(node, into: &heap)
        }

        let dummyHead = ListNode()
        var tail = dummyHead

        while !heap.isEmpty {
            let node = removeMinimum(from: &heap)
            tail.next = node
            tail = node

            if let next = node.next {
                insert(next, into: &heap)
            }
        }

        return dummyHead.next
    }

    private static func insert(_ node: ListNode, into heap: inout [ListNode]) {
        heap.append(node)
        var child = heap.count - 1

        while child > 0 {
            let parent = (child - 1) / 2
            guard heap[child].val < heap[parent].val else {
                break
            }

            heap.swapAt(child, parent)
            child = parent
        }
    }

    private static func removeMinimum(from heap: inout [ListNode]) -> ListNode {
        if heap.count == 1 {
            return heap.removeLast()
        }

        let minimum = heap[0]
        heap[0] = heap.removeLast()
        var parent = 0

        while true {
            let leftChild = parent * 2 + 1
            guard leftChild < heap.count else {
                break
            }

            let rightChild = leftChild + 1
            var smallerChild = leftChild
            if rightChild < heap.count,
               heap[rightChild].val < heap[leftChild].val {
                smallerChild = rightChild
            }

            guard heap[smallerChild].val < heap[parent].val else {
                break
            }

            heap.swapAt(parent, smallerChild)
            parent = smallerChild
        }

        return minimum
    }
}
