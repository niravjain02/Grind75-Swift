class LRUCache {
    private final class Node {
        let key: Int
        var value: Int
        var previous: Node?
        var next: Node?

        init(key: Int, value: Int) {
            self.key = key
            self.value = value
        }
    }

    private let capacity: Int
    private var nodesByKey: [Int: Node] = [:]
    private let leastRecent = Node(key: 0, value: 0)
    private let mostRecent = Node(key: 0, value: 0)

    init(_ capacity: Int) {
        self.capacity = capacity
        leastRecent.next = mostRecent
        mostRecent.previous = leastRecent
    }

    func get(_ key: Int) -> Int {
        guard let node = nodesByKey[key] else {
            return -1
        }

        remove(node)
        appendAsMostRecent(node)
        return node.value
    }

    func put(_ key: Int, _ value: Int) {
        if let node = nodesByKey[key] {
            node.value = value
            remove(node)
            appendAsMostRecent(node)
            return
        }

        let node = Node(key: key, value: value)
        nodesByKey[key] = node
        appendAsMostRecent(node)

        if nodesByKey.count > capacity,
           let nodeToEvict = leastRecent.next {
            remove(nodeToEvict)
            nodesByKey[nodeToEvict.key] = nil
        }
    }

    private func remove(_ node: Node) {
        node.previous?.next = node.next
        node.next?.previous = node.previous
    }

    private func appendAsMostRecent(_ node: Node) {
        let previousMostRecent = mostRecent.previous
        previousMostRecent?.next = node
        node.previous = previousMostRecent
        node.next = mostRecent
        mostRecent.previous = node
    }
}
