import XCTest
@testable import Grind75Swift

final class WordLadderTests: XCTestCase {
    func testStandardExample() {
        XCTAssertEqual(
            WordLadder.solve(
                "hit",
                "cog",
                wordList: ["hot", "dot", "dog", "lot", "log", "cog"]
            ),
            5
        )
    }

    func testMissingEndWordHasNoSequence() {
        XCTAssertEqual(
            WordLadder.solve(
                "hit",
                "cog",
                wordList: ["hot", "dot", "dog", "lot", "log"]
            ),
            0
        )
    }

    func testDirectTransformation() {
        XCTAssertEqual(WordLadder.solve("a", "c", wordList: ["a", "b", "c"]), 2)
    }

    func testDisconnectedDictionary() {
        XCTAssertEqual(
            WordLadder.solve("hit", "cog", wordList: ["hot", "cog"]),
            0
        )
    }

    func testDuplicateWordsOutsideConstraintsDoNotRepeatWork() {
        XCTAssertEqual(
            WordLadder.solve("hit", "hot", wordList: ["hot", "hot"]),
            2
        )
    }

    func testEmptyWordListOutsideConstraints() {
        XCTAssertEqual(WordLadder.solve("hit", "cog", wordList: []), 0)
    }

    func testEqualEndpointsOutsideConstraints() {
        XCTAssertEqual(WordLadder.solve("same", "same", wordList: []), 1)
    }
}
