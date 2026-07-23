import XCTest
@testable import Grind75Swift

final class ReverseLinkedListTests: XCTestCase {
    func testStandardExample() {
        let head = makeList([1, 2, 3, 4, 5])

        XCTAssertEqual(values(in: ReverseLinkedList.solve(head)), [5, 4, 3, 2, 1])
    }

    func testEmptyList() {
        XCTAssertNil(ReverseLinkedList.solve(nil))
    }

    func testSingleNode() {
        let head = ListNode(1)

        let result = ReverseLinkedList.solve(head)

        XCTAssertTrue(result === head)
        XCTAssertNil(result?.next)
    }

    func testTwoNodes() {
        let head = makeList([1, 2])

        XCTAssertEqual(values(in: ReverseLinkedList.solve(head)), [2, 1])
    }

    func testDuplicateValues() {
        let head = makeList([1, 1, 2, 2])

        XCTAssertEqual(values(in: ReverseLinkedList.solve(head)), [2, 2, 1, 1])
    }

    func testNegativeValues() {
        let head = makeList([-3, 0, -1])

        XCTAssertEqual(values(in: ReverseLinkedList.solve(head)), [-1, 0, -3])
    }

    func testReusesExistingNodes() {
        let first = ListNode(1)
        let second = ListNode(2)
        let third = ListNode(3)
        first.next = second
        second.next = third

        let result = ReverseLinkedList.solve(first)

        XCTAssertTrue(result === third)
        XCTAssertTrue(result?.next === second)
        XCTAssertTrue(result?.next?.next === first)
        XCTAssertNil(first.next)
    }

    private func makeList(_ values: [Int]) -> ListNode? {
        let dummyHead = ListNode()
        var tail = dummyHead

        for value in values {
            tail.next = ListNode(value)
            tail = tail.next!
        }

        return dummyHead.next
    }

    private func values(in head: ListNode?) -> [Int] {
        var result: [Int] = []
        var node = head

        while let current = node {
            result.append(current.val)
            node = current.next
        }

        return result
    }
}
