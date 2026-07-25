public enum KClosestPointsToOrigin {
    /// Returns any `k` points with the smallest Euclidean distances from the origin.
    ///
    /// - Complexity:
    ///   - Time: O(n log k)
    ///   - Space: O(k)
    public static func solve(_ points: [[Int]], _ k: Int) -> [[Int]] {
        guard k > 0 else {
            return []
        }

        var heap: [[Int]] = []
        heap.reserveCapacity(min(k, points.count))

        for point in points {
            if heap.count < k {
                heap.append(point)
                siftUp(&heap, from: heap.count - 1)
            } else if squaredDistance(of: point) < squaredDistance(of: heap[0]) {
                heap[0] = point
                siftDown(&heap, from: 0)
            }
        }

        return heap
    }

    private static func squaredDistance(of point: [Int]) -> Int {
        point[0] * point[0] + point[1] * point[1]
    }

    private static func siftUp(_ heap: inout [[Int]], from startIndex: Int) {
        var child = startIndex

        while child > 0 {
            let parent = (child - 1) / 2
            guard squaredDistance(of: heap[child]) > squaredDistance(of: heap[parent]) else {
                return
            }

            heap.swapAt(child, parent)
            child = parent
        }
    }

    private static func siftDown(_ heap: inout [[Int]], from startIndex: Int) {
        var parent = startIndex

        while true {
            let leftChild = parent * 2 + 1
            guard leftChild < heap.count else {
                return
            }

            let rightChild = leftChild + 1
            var largerChild = leftChild

            if rightChild < heap.count,
               squaredDistance(of: heap[rightChild]) > squaredDistance(of: heap[leftChild]) {
                largerChild = rightChild
            }

            guard squaredDistance(of: heap[largerChild]) > squaredDistance(of: heap[parent]) else {
                return
            }

            heap.swapAt(parent, largerChild)
            parent = largerChild
        }
    }
}
