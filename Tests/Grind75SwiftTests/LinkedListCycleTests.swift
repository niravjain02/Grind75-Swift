import XCTest
@testable import Grind75Swift

final class LinkedListCycleTests: XCTestCase {
    func testStandardCycleExample() {
        let nodes = makeNodes([3, 2, 0, -4])
        nodes.last?.next = nodes[1]

        XCTAssertTrue(LinkedListCycle.solve(nodes[0]))
    }

    func testTwoNodeCycle() {
        let nodes = makeNodes([1, 2])
        nodes[1].next = nodes[0]

        XCTAssertTrue(LinkedListCycle.solve(nodes[0]))
    }

    func testStandardAcyclicExample() {
        let nodes = makeNodes([1])

        XCTAssertFalse(LinkedListCycle.solve(nodes[0]))
    }

    func testEmptyList() {
        XCTAssertFalse(LinkedListCycle.solve(nil))
    }

    func testSingleNodeSelfCycle() {
        let node = ListNode(-1)
        node.next = node

        XCTAssertTrue(LinkedListCycle.solve(node))
    }

    func testLongAcyclicList() {
        let nodes = makeNodes([-3, -2, -1, 0, 1, 2])

        XCTAssertFalse(LinkedListCycle.solve(nodes[0]))
    }

    func testDuplicateValuesWithoutCycle() {
        let nodes = makeNodes([7, 7, 7, 7])

        XCTAssertFalse(LinkedListCycle.solve(nodes[0]))
    }

    func testDuplicateValuesWithCycle() {
        let nodes = makeNodes([5, 5, 5])
        nodes[2].next = nodes[1]

        XCTAssertTrue(LinkedListCycle.solve(nodes[0]))
    }

    private func makeNodes(_ values: [Int]) -> [ListNode] {
        let nodes = values.map { ListNode($0) }

        for index in 0..<(nodes.count - 1) {
            nodes[index].next = nodes[index + 1]
        }

        return nodes
    }
}
