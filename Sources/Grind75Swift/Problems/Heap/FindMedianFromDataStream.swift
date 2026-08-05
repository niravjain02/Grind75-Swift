public final class MedianFinder {
    private var lowerHalf: [Int] = []
    private var upperHalf: [Int] = []

    public init() {}

    /// Adds a number while keeping the two halves balanced.
    ///
    /// - Complexity: O(log n) time and O(n) total space
    public func addNum(_ num: Int) {
        if lowerHalf.isEmpty || num <= lowerHalf[0] {
            Self.insert(num, into: &lowerHalf, orderedBy: >)
        } else {
            Self.insert(num, into: &upperHalf, orderedBy: <)
        }

        if lowerHalf.count > upperHalf.count + 1 {
            let value = Self.removeRoot(from: &lowerHalf, orderedBy: >)
            Self.insert(value, into: &upperHalf, orderedBy: <)
        } else if upperHalf.count > lowerHalf.count {
            let value = Self.removeRoot(from: &upperHalf, orderedBy: <)
            Self.insert(value, into: &lowerHalf, orderedBy: >)
        }
    }

    /// Returns the median of all numbers added so far.
    ///
    /// - Complexity: O(1) time
    public func findMedian() -> Double {
        guard let lowerMaximum = lowerHalf.first else {
            return 0
        }

        if lowerHalf.count > upperHalf.count {
            return Double(lowerMaximum)
        }

        return (Double(lowerMaximum) + Double(upperHalf[0])) / 2.0
    }

    private static func insert(
        _ value: Int,
        into heap: inout [Int],
        orderedBy hasHigherPriority: (Int, Int) -> Bool
    ) {
        heap.append(value)
        var child = heap.count - 1

        while child > 0 {
            let parent = (child - 1) / 2
            guard hasHigherPriority(heap[child], heap[parent]) else {
                return
            }

            heap.swapAt(child, parent)
            child = parent
        }
    }

    private static func removeRoot(
        from heap: inout [Int],
        orderedBy hasHigherPriority: (Int, Int) -> Bool
    ) -> Int {
        if heap.count == 1 {
            return heap.removeLast()
        }

        let root = heap[0]
        heap[0] = heap.removeLast()
        var parent = 0

        while true {
            let leftChild = parent * 2 + 1
            guard leftChild < heap.count else {
                break
            }

            let rightChild = leftChild + 1
            var preferredChild = leftChild
            if rightChild < heap.count,
               hasHigherPriority(heap[rightChild], heap[leftChild]) {
                preferredChild = rightChild
            }

            guard hasHigherPriority(heap[preferredChild], heap[parent]) else {
                break
            }

            heap.swapAt(parent, preferredChild)
            parent = preferredChild
        }

        return root
    }
}
