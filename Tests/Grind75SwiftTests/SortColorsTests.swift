import XCTest
@testable import Grind75Swift

final class SortColorsTests: XCTestCase {
    func testStandardExample() {
        assertSorted([2, 0, 2, 1, 1, 0], equals: [0, 0, 1, 1, 2, 2])
    }

    func testStandardThreeValueExample() {
        assertSorted([2, 0, 1], equals: [0, 1, 2])
    }

    func testEmptyArray() {
        assertSorted([], equals: [])
    }

    func testSingleValue() {
        assertSorted([1], equals: [1])
    }

    func testAllDuplicateValues() {
        assertSorted([2, 2, 2, 2], equals: [2, 2, 2, 2])
    }

    func testAlreadySorted() {
        assertSorted([0, 0, 1, 1, 2, 2], equals: [0, 0, 1, 1, 2, 2])
    }

    func testReverseOrder() {
        assertSorted([2, 2, 1, 1, 0, 0], equals: [0, 0, 1, 1, 2, 2])
    }

    func testTwoValues() {
        assertSorted([2, 0], equals: [0, 2])
    }

    private func assertSorted(_ input: [Int], equals expected: [Int]) {
        var numbers = input

        SortColors.solve(&numbers)

        XCTAssertEqual(numbers, expected)
    }
}
