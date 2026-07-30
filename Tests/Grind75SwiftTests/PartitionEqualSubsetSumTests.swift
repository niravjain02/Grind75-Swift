import XCTest
@testable import Grind75Swift

final class PartitionEqualSubsetSumTests: XCTestCase {
    func testStandardPartitionableExample() {
        XCTAssertTrue(PartitionEqualSubsetSum.solve([1, 5, 11, 5]))
    }

    func testStandardNonpartitionableExample() {
        XCTAssertFalse(PartitionEqualSubsetSum.solve([1, 2, 3, 5]))
    }

    func testDuplicateValues() {
        XCTAssertTrue(PartitionEqualSubsetSum.solve([2, 2, 3, 3]))
    }

    func testSingleValue() {
        XCTAssertFalse(PartitionEqualSubsetSum.solve([1]))
    }

    func testTwoEqualValues() {
        XCTAssertTrue(PartitionEqualSubsetSum.solve([100, 100]))
    }

    func testEvenTotalWithoutReachableHalf() {
        XCTAssertFalse(PartitionEqualSubsetSum.solve([2, 2, 2, 2, 2]))
    }

    func testEmptyArrayOutsideLeetCodeConstraints() {
        XCTAssertTrue(PartitionEqualSubsetSum.solve([]))
    }

    func testZerosOutsideLeetCodeConstraints() {
        XCTAssertTrue(PartitionEqualSubsetSum.solve([0, 0]))
    }

    func testNegativeValueOutsideLeetCodeConstraints() {
        XCTAssertFalse(PartitionEqualSubsetSum.solve([-1, 1]))
    }
}
