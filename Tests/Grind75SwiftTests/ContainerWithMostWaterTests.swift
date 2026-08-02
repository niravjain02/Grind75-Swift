import XCTest
@testable import Grind75Swift

final class ContainerWithMostWaterTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(ContainerWithMostWater.solve([1, 8, 6, 2, 5, 4, 8, 3, 7]), 49)
    }

    func testTwoEqualLines() {
        XCTAssertEqual(ContainerWithMostWater.solve([1, 1]), 1)
    }

    func testIncreasingHeights() {
        XCTAssertEqual(ContainerWithMostWater.solve([1, 2, 3, 4, 5]), 6)
    }

    func testDuplicateMaximumHeights() {
        XCTAssertEqual(ContainerWithMostWater.solve([5, 1, 5]), 10)
    }

    func testZeroHeights() {
        XCTAssertEqual(ContainerWithMostWater.solve([0, 0, 0]), 0)
    }

    func testMinimalInputOutsideConstraints() {
        XCTAssertEqual(ContainerWithMostWater.solve([]), 0)
        XCTAssertEqual(ContainerWithMostWater.solve([7]), 0)
    }
}
