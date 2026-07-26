public final class GraphNode {
    public var val: Int
    public var neighbors: [GraphNode]

    public init(_ val: Int = 0, _ neighbors: [GraphNode] = []) {
        self.val = val
        self.neighbors = neighbors
    }
}

public enum CloneGraph {
    /// Returns a deep copy of the connected graph containing `node`.
    ///
    /// - Complexity:
    ///   - Time: O(V + E)
    ///   - Space: O(V)
    public static func solve(_ node: GraphNode?) -> GraphNode? {
        guard let node else {
            return nil
        }

        let startClone = GraphNode(node.val)
        var clones = [ObjectIdentifier(node): startClone]
        var queue = [node]
        var head = 0

        while head < queue.count {
            let original = queue[head]
            head += 1
            let clone = clones[ObjectIdentifier(original)]!

            for neighbor in original.neighbors {
                let identifier = ObjectIdentifier(neighbor)

                if clones[identifier] == nil {
                    clones[identifier] = GraphNode(neighbor.val)
                    queue.append(neighbor)
                }

                clone.neighbors.append(clones[identifier]!)
            }
        }

        return startClone
    }
}
