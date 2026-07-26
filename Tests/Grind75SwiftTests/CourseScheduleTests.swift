import XCTest
@testable import Grind75Swift

final class CourseScheduleTests: XCTestCase {
    func testStandardPossibleExample() {
        XCTAssertTrue(CourseSchedule.solve(2, prerequisites: [[1, 0]]))
    }

    func testStandardCycleExample() {
        XCTAssertFalse(CourseSchedule.solve(2, prerequisites: [[1, 0], [0, 1]]))
    }

    func testNoPrerequisites() {
        XCTAssertTrue(CourseSchedule.solve(4, prerequisites: []))
    }

    func testSingleCourse() {
        XCTAssertTrue(CourseSchedule.solve(1, prerequisites: []))
    }

    func testSelfCycle() {
        XCTAssertFalse(CourseSchedule.solve(1, prerequisites: [[0, 0]]))
    }

    func testBranchingAcyclicGraph() {
        XCTAssertTrue(
            CourseSchedule.solve(
                5,
                prerequisites: [[1, 0], [2, 0], [3, 1], [3, 2], [4, 3]]
            )
        )
    }

    func testCycleInDisconnectedComponent() {
        XCTAssertFalse(
            CourseSchedule.solve(
                6,
                prerequisites: [[1, 0], [2, 1], [4, 3], [5, 4], [3, 5]]
            )
        )
    }

    func testDuplicatePrerequisiteEdgesRemainBalanced() {
        XCTAssertTrue(
            CourseSchedule.solve(2, prerequisites: [[1, 0], [1, 0]])
        )
    }

    func testZeroCoursesOutsideLeetCodeConstraints() {
        XCTAssertTrue(CourseSchedule.solve(0, prerequisites: []))
    }
}
