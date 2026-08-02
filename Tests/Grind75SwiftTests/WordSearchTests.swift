import XCTest
@testable import Grind75Swift

final class WordSearchTests: XCTestCase {
    private let standardBoard = [
        Array("ABCE"),
        Array("SFCS"),
        Array("ADEE")
    ]

    func testStandardExampleFound() {
        XCTAssertTrue(WordSearch.solve(standardBoard, word: "ABCCED"))
    }

    func testSecondStandardExampleFound() {
        XCTAssertTrue(WordSearch.solve(standardBoard, word: "SEE"))
    }

    func testCellCannotBeReused() {
        XCTAssertFalse(WordSearch.solve(standardBoard, word: "ABCB"))
    }

    func testSingleCell() {
        XCTAssertTrue(WordSearch.solve([["A"]], word: "A"))
        XCTAssertFalse(WordSearch.solve([["A"]], word: "B"))
    }

    func testDuplicateLettersRequireDistinctCells() {
        XCTAssertTrue(WordSearch.solve([Array("AA")], word: "AA"))
        XCTAssertFalse(WordSearch.solve([Array("AA")], word: "AAA"))
    }

    func testBacktrackingRestoresCellsForAnotherPath() {
        let board = [Array("CAA"), Array("AAA"), Array("BCD")]
        XCTAssertTrue(WordSearch.solve(board, word: "AAB"))
    }

    func testEmptyBoard() {
        XCTAssertFalse(WordSearch.solve([], word: "A"))
        XCTAssertFalse(WordSearch.solve([[]], word: "A"))
    }

    func testEmptyWordOutsideConstraints() {
        XCTAssertTrue(WordSearch.solve(standardBoard, word: ""))
    }

    func testInputBoardIsNotModified() {
        let board = standardBoard
        _ = WordSearch.solve(board, word: "ABCCED")
        XCTAssertEqual(board, standardBoard)
    }
}
