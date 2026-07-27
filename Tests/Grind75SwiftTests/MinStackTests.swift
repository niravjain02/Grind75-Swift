import XCTest
@testable import Grind75Swift

final class MinStackTests: XCTestCase {
    func testStandardExample() {
        let stack = MinStack()
        stack.push(-2)
        stack.push(0)
        stack.push(-3)

        XCTAssertEqual(stack.getMin(), -3)
        stack.pop()
        XCTAssertEqual(stack.top(), 0)
        XCTAssertEqual(stack.getMin(), -2)
    }

    func testSingleValue() {
        let stack = MinStack()
        stack.push(7)

        XCTAssertEqual(stack.top(), 7)
        XCTAssertEqual(stack.getMin(), 7)
    }

    func testDuplicateMinimumValues() {
        let stack = MinStack()
        stack.push(2)
        stack.push(1)
        stack.push(1)
        stack.pop()

        XCTAssertEqual(stack.getMin(), 1)
        stack.pop()
        XCTAssertEqual(stack.getMin(), 2)
    }

    func testMinimumChangesAtEveryDepth() {
        let stack = MinStack()
        stack.push(3)
        stack.push(2)
        stack.push(1)

        XCTAssertEqual(stack.getMin(), 1)
        stack.pop()
        XCTAssertEqual(stack.getMin(), 2)
        stack.pop()
        XCTAssertEqual(stack.getMin(), 3)
    }

    func testNegativeAndPositiveValues() {
        let stack = MinStack()
        stack.push(5)
        stack.push(-10)
        stack.push(4)

        XCTAssertEqual(stack.top(), 4)
        XCTAssertEqual(stack.getMin(), -10)
    }

    func testIntegerExtremes() {
        let stack = MinStack()
        stack.push(Int.max)
        stack.push(Int.min)

        XCTAssertEqual(stack.getMin(), Int.min)
        stack.pop()
        XCTAssertEqual(stack.getMin(), Int.max)
    }
}
