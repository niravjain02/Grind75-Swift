import XCTest
@testable import Grind75Swift

final class ImplementQueueUsingStacksTests: XCTestCase {
    func testStandardExample() {
        let queue = QueueUsingStacks()

        queue.push(1)
        queue.push(2)

        XCTAssertEqual(queue.peek(), 1)
        XCTAssertEqual(queue.pop(), 1)
        XCTAssertFalse(queue.empty())
    }

    func testNewQueueIsEmpty() {
        XCTAssertTrue(QueueUsingStacks().empty())
    }

    func testSingleElementQueue() {
        let queue = QueueUsingStacks()

        queue.push(-1)

        XCTAssertEqual(queue.peek(), -1)
        XCTAssertEqual(queue.pop(), -1)
        XCTAssertTrue(queue.empty())
    }

    func testFIFOOrderWithDuplicatesAndNegativeValues() {
        let queue = QueueUsingStacks()

        [3, -2, -2, 5].forEach(queue.push)

        XCTAssertEqual(queue.pop(), 3)
        XCTAssertEqual(queue.pop(), -2)
        XCTAssertEqual(queue.pop(), -2)
        XCTAssertEqual(queue.pop(), 5)
        XCTAssertTrue(queue.empty())
    }

    func testPushAfterPartialDequeuePreservesOrder() {
        let queue = QueueUsingStacks()

        queue.push(1)
        queue.push(2)
        XCTAssertEqual(queue.pop(), 1)

        queue.push(3)
        queue.push(4)

        XCTAssertEqual(queue.peek(), 2)
        XCTAssertEqual(queue.pop(), 2)
        XCTAssertEqual(queue.pop(), 3)
        XCTAssertEqual(queue.pop(), 4)
        XCTAssertTrue(queue.empty())
    }

    func testRepeatedPeekDoesNotRemoveElement() {
        let queue = QueueUsingStacks()

        queue.push(10)
        queue.push(20)

        XCTAssertEqual(queue.peek(), 10)
        XCTAssertEqual(queue.peek(), 10)
        XCTAssertFalse(queue.empty())
        XCTAssertEqual(queue.pop(), 10)
    }

    func testQueueCanBeReusedAfterBecomingEmpty() {
        let queue = QueueUsingStacks()

        queue.push(1)
        XCTAssertEqual(queue.pop(), 1)
        XCTAssertTrue(queue.empty())

        queue.push(2)
        XCTAssertEqual(queue.peek(), 2)
        XCTAssertEqual(queue.pop(), 2)
        XCTAssertTrue(queue.empty())
    }
}
