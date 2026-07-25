import XCTest
@testable import Grind75Swift

final class ContainsDuplicateTests: XCTestCase {
    func testStandardDuplicateExample() {
        XCTAssertTrue(ContainsDuplicate.solve([1, 2, 3, 1]))
    }

    func testStandardUniqueExample() {
        XCTAssertFalse(ContainsDuplicate.solve([1, 2, 3, 4]))
    }

    func testStandardManyDuplicatesExample() {
        XCTAssertTrue(ContainsDuplicate.solve([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]))
    }

    func testEmptyArray() {
        XCTAssertFalse(ContainsDuplicate.solve([]))
    }

    func testSingleValue() {
        XCTAssertFalse(ContainsDuplicate.solve([-1]))
    }

    func testNegativeDuplicate() {
        XCTAssertTrue(ContainsDuplicate.solve([-5, 0, 3, -5]))
    }

    func testDuplicateZero() {
        XCTAssertTrue(ContainsDuplicate.solve([0, 1, 0]))
    }

    func testRepeatedValuesSeparatedByManyElements() {
        XCTAssertTrue(ContainsDuplicate.solve([9, 8, 7, 6, 5, 4, 3, 2, 1, 9]))
    }
}
