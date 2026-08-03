class Solution {
    func findMinHeightTrees(_ n: Int, _ edges: [[Int]]) -> [Int] {
        guard n > 1 else {
            return n == 1 ? [0] : []
        }

        var adjacency = Array(repeating: [Int](), count: n)
        var degree = Array(repeating: 0, count: n)

        for edge in edges {
            let first = edge[0]
            let second = edge[1]
            adjacency[first].append(second)
            adjacency[second].append(first)
            degree[first] += 1
            degree[second] += 1
        }

        var leaves = (0..<n).filter { degree[$0] == 1 }
        var remainingNodes = n

        while remainingNodes > 2 {
            remainingNodes -= leaves.count
            var nextLeaves: [Int] = []

            for leaf in leaves {
                degree[leaf] = 0
                for neighbor in adjacency[leaf] where degree[neighbor] > 0 {
                    degree[neighbor] -= 1
                    if degree[neighbor] == 1 {
                        nextLeaves.append(neighbor)
                    }
                }
            }

            leaves = nextLeaves
        }

        return leaves.sorted()
    }
}
