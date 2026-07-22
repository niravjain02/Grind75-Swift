import XCTest
@testable import Grind75Swift

final class ClimbingStairsTests: XCTestCase {
    func testStandardTwoStepExample() {
        XCTAssertEqual(ClimbingStairs.solve(2), 2)
    }

    func testStandardThreeStepExample() {
        XCTAssertEqual(ClimbingStairs.solve(3), 3)
    }

    func testMinimalInput() {
        XCTAssertEqual(ClimbingStairs.solve(1), 1)
    }

    func testFiveSteps() {
        XCTAssertEqual(ClimbingStairs.solve(5), 8)
    }

    func testTenSteps() {
        XCTAssertEqual(ClimbingStairs.solve(10), 89)
    }

    func testMaximumConstrainedInput() {
        XCTAssertEqual(ClimbingStairs.solve(45), 1_836_311_903)
    }

    func testZeroStepsOutsideLeetCodeConstraintsReturnsZero() {
        XCTAssertEqual(ClimbingStairs.solve(0), 0)
    }
}
