class Solution {
    func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
        var heap: [[Int]] = []

        for point in points {
            if heap.count < k {
                heap.append(point)
                siftUp(&heap, from: heap.count - 1)
            } else if distance(point) < distance(heap[0]) {
                heap[0] = point
                siftDown(&heap)
            }
        }

        return heap
    }

    private func distance(_ point: [Int]) -> Int {
        point[0] * point[0] + point[1] * point[1]
    }

    private func siftUp(_ heap: inout [[Int]], from startIndex: Int) {
        var child = startIndex

        while child > 0 {
            let parent = (child - 1) / 2
            guard distance(heap[child]) > distance(heap[parent]) else {
                return
            }

            heap.swapAt(child, parent)
            child = parent
        }
    }

    private func siftDown(_ heap: inout [[Int]]) {
        var parent = 0

        while true {
            let leftChild = parent * 2 + 1
            guard leftChild < heap.count else {
                return
            }

            let rightChild = leftChild + 1
            var largerChild = leftChild

            if rightChild < heap.count,
               distance(heap[rightChild]) > distance(heap[leftChild]) {
                largerChild = rightChild
            }

            guard distance(heap[largerChild]) > distance(heap[parent]) else {
                return
            }

            heap.swapAt(parent, largerChild)
            parent = largerChild
        }
    }
}
