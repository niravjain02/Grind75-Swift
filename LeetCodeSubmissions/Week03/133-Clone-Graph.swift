class Solution {
    func cloneGraph(_ node: Node?) -> Node? {
        guard let node else {
            return nil
        }

        let startClone = Node(node.val)
        var clones = [ObjectIdentifier(node): startClone]
        var queue = [node]
        var head = 0

        while head < queue.count {
            let original = queue[head]
            head += 1
            let clone = clones[ObjectIdentifier(original)]!

            for case let neighbor? in original.neighbors {
                let identifier = ObjectIdentifier(neighbor)

                if clones[identifier] == nil {
                    clones[identifier] = Node(neighbor.val)
                    queue.append(neighbor)
                }

                clone.neighbors.append(clones[identifier]!)
            }
        }

        return startClone
    }
}
