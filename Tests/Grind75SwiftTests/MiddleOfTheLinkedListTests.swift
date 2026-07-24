import XCTest
@testable import Grind75Swift

final class MiddleOfTheLinkedListTests: XCTestCase {
    func testStandardOddLengthExample() {
        let head = makeList([1, 2, 3, 4, 5])

        XCTAssertEqual(values(from: MiddleOfTheLinkedList.solve(head)), [3, 4, 5])
    }

    func testStandardEvenLengthExampleReturnsSecondMiddle() {
        let head = makeList([1, 2, 3, 4, 5, 6])

        XCTAssertEqual(values(from: MiddleOfTheLinkedList.solve(head)), [4, 5, 6])
    }

    func testEmptyList() {
        XCTAssertNil(MiddleOfTheLinkedList.solve(nil))
    }

    func testSingleNode() {
        let head = ListNode(-1)

        XCTAssertTrue(MiddleOfTheLinkedList.solve(head) === head)
    }

    func testTwoNodesReturnsSecondNode() {
        let second = ListNode(2)
        let head = ListNode(1, second)

        XCTAssertTrue(MiddleOfTheLinkedList.solve(head) === second)
    }

    func testDuplicateValues() {
        let head = makeList([7, 7, 7, 7])

        XCTAssertEqual(values(from: MiddleOfTheLinkedList.solve(head)), [7, 7])
    }

    func testNegativeValues() {
        let head = makeList([-5, -4, -3, -2, -1])

        XCTAssertEqual(values(from: MiddleOfTheLinkedList.solve(head)), [-3, -2, -1])
    }

    func testReturnsExistingNodeWithoutModifyingList() {
        let third = ListNode(3)
        let second = ListNode(2, third)
        let head = ListNode(1, second)

        let result = MiddleOfTheLinkedList.solve(head)

        XCTAssertTrue(result === second)
        XCTAssertTrue(head.next === second)
        XCTAssertTrue(second.next === third)
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

    private func values(from head: ListNode?) -> [Int] {
        var result: [Int] = []
        var node = head

        while let current = node {
            result.append(current.val)
            node = current.next
        }

        return result
    }
}
