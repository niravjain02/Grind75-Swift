class MedianFinder {
    private var lowerHalf: [Int] = []
    private var upperHalf: [Int] = []

    init() {}

    func addNum(_ num: Int) {
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

    func findMedian() -> Double {
        if lowerHalf.count > upperHalf.count {
            return Double(lowerHalf[0])
        }

        return (Double(lowerHalf[0]) + Double(upperHalf[0])) / 2.0
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
            guard hasHigherPriority(heap[child], heap[parent]) else { return }
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

        while parent * 2 + 1 < heap.count {
            let leftChild = parent * 2 + 1
            let rightChild = leftChild + 1
            var preferredChild = leftChild
            if rightChild < heap.count,
               hasHigherPriority(heap[rightChild], heap[leftChild]) {
                preferredChild = rightChild
            }

            guard hasHigherPriority(heap[preferredChild], heap[parent]) else { break }
            heap.swapAt(parent, preferredChild)
            parent = preferredChild
        }

        return root
    }
}

// Your MedianFinder object will be instantiated and called as such:
// let obj = MedianFinder()
// obj.addNum(num)
// let median = obj.findMedian()
