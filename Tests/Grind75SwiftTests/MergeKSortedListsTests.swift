import XCTest
@testable import Grind75Swift

final class MergeKSortedListsTests: XCTestCase {
    func testStandardExample() {
        let lists = [makeList([1, 4, 5]), makeList([1, 3, 4]), makeList([2, 6])]

        XCTAssertEqual(values(in: MergeKSortedLists.solve(lists)), [1, 1, 2, 3, 4, 4, 5, 6])
    }

    func testNoLists() {
        XCTAssertNil(MergeKSortedLists.solve([]))
    }

    func testOnlyEmptyLists() {
        XCTAssertNil(MergeKSortedLists.solve([nil, nil]))
    }

    func testSingleMinimalList() {
        XCTAssertEqual(values(in: MergeKSortedLists.solve([makeList([0])])), [0])
    }

    func testDuplicateAndNegativeValues() {
        let lists = [makeList([-5, -1, 2]), makeList([-5, 2, 2]), nil, makeList([-3, 0])]

        XCTAssertEqual(values(in: MergeKSortedLists.solve(lists)), [-5, -5, -3, -1, 0, 2, 2, 2])
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
        var values: [Int] = []
        var node = head

        while let current = node {
            values.append(current.val)
            node = current.next
        }

        return values
    }
}
