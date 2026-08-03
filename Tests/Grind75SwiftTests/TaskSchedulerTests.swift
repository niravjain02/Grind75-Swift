import XCTest
@testable import Grind75Swift

final class TaskSchedulerTests: XCTestCase {
    func testStandardExampleWithIdleIntervals() {
        XCTAssertEqual(
            TaskScheduler.solve(Array("AAABBB"), cooldown: 2),
            8
        )
    }

    func testStandardExampleWithoutCooldown() {
        XCTAssertEqual(
            TaskScheduler.solve(Array("AAABBB"), cooldown: 0),
            6
        )
    }

    func testOtherTasksFillEveryGap() {
        XCTAssertEqual(
            TaskScheduler.solve(Array("AAABBBCC"), cooldown: 2),
            8
        )
    }

    func testOneMostFrequentTaskNeedsIdleIntervals() {
        XCTAssertEqual(
            TaskScheduler.solve(Array("AAAABC"), cooldown: 2),
            10
        )
    }

    func testAllDistinctTasks() {
        XCTAssertEqual(
            TaskScheduler.solve(Array("ABCDE"), cooldown: 4),
            5
        )
    }

    func testSingleTask() {
        XCTAssertEqual(TaskScheduler.solve(["A"], cooldown: 100), 1)
    }

    func testEmptyTasksOutsideConstraints() {
        XCTAssertEqual(TaskScheduler.solve([], cooldown: 2), 0)
    }

    func testNegativeCooldownOutsideConstraintsActsLikeZero() {
        XCTAssertEqual(
            TaskScheduler.solve(Array("AAB"), cooldown: -1),
            3
        )
    }
}
