import XCTest
@testable import Grind75Swift

final class CloneGraphTests: XCTestCase {
    func testStandardFourNodeExample() {
        let nodes = makeSquareGraph()

        let clone = CloneGraph.solve(nodes[0])

        XCTAssertEqual(adjacencyList(from: clone), [[2, 4], [1, 3], [2, 4], [1, 3]])
        assertDeepCopy(original: nodes[0], clone: clone)
    }

    func testEmptyGraph() {
        XCTAssertNil(CloneGraph.solve(nil))
    }

    func testSingleNodeWithoutNeighbors() {
        let original = GraphNode(1)

        let clone = CloneGraph.solve(original)

        XCTAssertEqual(clone?.val, 1)
        XCTAssertEqual(clone?.neighbors.count, 0)
        XCTAssertFalse(clone === original)
    }

    func testTwoNodesWithDuplicateValues() {
        let first = GraphNode(-1)
        let second = GraphNode(-1)
        first.neighbors = [second]
        second.neighbors = [first]

        let clone = CloneGraph.solve(first)

        XCTAssertEqual(clone?.val, -1)
        XCTAssertEqual(clone?.neighbors.first?.val, -1)
        XCTAssertTrue(clone?.neighbors.first?.neighbors.first === clone)
        XCTAssertFalse(clone === first)
        XCTAssertFalse(clone?.neighbors.first === second)
    }

    func testSelfLoop() {
        let original = GraphNode(7)
        original.neighbors = [original]

        let clone = CloneGraph.solve(original)

        XCTAssertTrue(clone?.neighbors.first === clone)
        XCTAssertFalse(clone === original)
    }

    func testRepeatedNeighborPreservesEdges() {
        let first = GraphNode(1)
        let second = GraphNode(2)
        first.neighbors = [second, second]
        second.neighbors = [first]

        let clone = CloneGraph.solve(first)

        XCTAssertEqual(clone?.neighbors.count, 2)
        XCTAssertTrue(clone?.neighbors[0] === clone?.neighbors[1])
    }

    func testChangingCloneDoesNotChangeOriginal() {
        let nodes = makeSquareGraph()
        let clone = CloneGraph.solve(nodes[0])

        clone?.val = 99
        clone?.neighbors.removeAll()

        XCTAssertEqual(nodes[0].val, 1)
        XCTAssertEqual(nodes[0].neighbors.map(\.val), [2, 4])
    }

    private func makeSquareGraph() -> [GraphNode] {
        let nodes = (1...4).map { GraphNode($0) }
        nodes[0].neighbors = [nodes[1], nodes[3]]
        nodes[1].neighbors = [nodes[0], nodes[2]]
        nodes[2].neighbors = [nodes[1], nodes[3]]
        nodes[3].neighbors = [nodes[0], nodes[2]]
        return nodes
    }

    private func adjacencyList(from start: GraphNode?) -> [[Int]] {
        guard let start else {
            return []
        }

        var nodesByValue: [Int: GraphNode] = [:]
        var queue = [start]
        var head = 0
        nodesByValue[start.val] = start

        while head < queue.count {
            let node = queue[head]
            head += 1

            for neighbor in node.neighbors where nodesByValue[neighbor.val] == nil {
                nodesByValue[neighbor.val] = neighbor
                queue.append(neighbor)
            }
        }

        return nodesByValue.keys.sorted().map { value in
            nodesByValue[value]!.neighbors.map(\.val)
        }
    }

    private func assertDeepCopy(original: GraphNode, clone: GraphNode?) {
        guard let clone else {
            return XCTFail("Expected a cloned graph")
        }

        var queue = [(original, clone)]
        var head = 0
        var visited: Set<ObjectIdentifier> = []

        while head < queue.count {
            let (originalNode, clonedNode) = queue[head]
            head += 1

            guard visited.insert(ObjectIdentifier(originalNode)).inserted else {
                continue
            }

            XCTAssertFalse(originalNode === clonedNode)
            XCTAssertEqual(originalNode.val, clonedNode.val)
            XCTAssertEqual(originalNode.neighbors.count, clonedNode.neighbors.count)

            for (originalNeighbor, clonedNeighbor) in zip(
                originalNode.neighbors,
                clonedNode.neighbors
            ) {
                queue.append((originalNeighbor, clonedNeighbor))
            }
        }
    }
}
