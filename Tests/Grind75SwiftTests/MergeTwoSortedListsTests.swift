import XCTest
@testable import Grind75Swift

final class MergeTwoSortedListsTests: XCTestCase {
    func testStandardExample() {
        let first = makeList([1, 2, 4])
        let second = makeList([1, 3, 4])

        XCTAssertEqual(values(in: MergeTwoSortedLists.solve(first, second)), [1, 1, 2, 3, 4, 4])
    }

    func testBothListsEmpty() {
        XCTAssertNil(MergeTwoSortedLists.solve(nil, nil))
    }

    func testFirstListEmpty() {
        let second = makeList([0])

        XCTAssertEqual(values(in: MergeTwoSortedLists.solve(nil, second)), [0])
    }

    func testSecondListEmpty() {
        let first = makeList([1, 2])

        XCTAssertEqual(values(in: MergeTwoSortedLists.solve(first, nil)), [1, 2])
    }

    func testMinimalLists() {
        let first = makeList([1])
        let second = makeList([2])

        XCTAssertEqual(values(in: MergeTwoSortedLists.solve(first, second)), [1, 2])
    }

    func testDuplicateValues() {
        let first = makeList([1, 1, 3])
        let second = makeList([1, 2, 3])

        XCTAssertEqual(values(in: MergeTwoSortedLists.solve(first, second)), [1, 1, 1, 2, 3, 3])
    }

    func testNegativeValues() {
        let first = makeList([-10, -3, 0])
        let second = makeList([-8, -3, 5])

        XCTAssertEqual(values(in: MergeTwoSortedLists.solve(first, second)), [-10, -8, -3, -3, 0, 5])
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
