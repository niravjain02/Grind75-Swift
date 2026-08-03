public enum MinimumHeightTrees {
    /// Returns every root that gives the tree its minimum possible height.
    ///
    /// - Complexity:
    ///   - Time: O(n)
    ///   - Space: O(n)
    public static func solve(_ nodeCount: Int, edges: [[Int]]) -> [Int] {
        guard nodeCount > 0 else {
            return []
        }
        guard nodeCount > 1 else {
            return [0]
        }

        var adjacency = Array(repeating: [Int](), count: nodeCount)
        var degree = Array(repeating: 0, count: nodeCount)

        for edge in edges {
            let first = edge[0]
            let second = edge[1]
            adjacency[first].append(second)
            adjacency[second].append(first)
            degree[first] += 1
            degree[second] += 1
        }

        var leaves = (0..<nodeCount).filter { degree[$0] == 1 }
        var remainingNodes = nodeCount

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
