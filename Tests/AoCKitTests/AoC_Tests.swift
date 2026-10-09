import XCTest
@testable import AoCKit
import class Foundation.Bundle

final class AoCTests: XCTestCase {
    static let expectedError = "Expected error to be thrown"
    static let invalidError = "Invalid error thrown"
    static let expectedIlligalCharacter = "Expected illigal character"

    // MARK: - Day 1
    let day1Input = """
L68
L30
R48
L5
R60
L55
L1
L99
R14
L82
"""

    func testDay1Part1() {
        XCTAssertEqual(Day1(input: day1Input).part1(), 3)
    }

    func testDay1Part2() {
        XCTAssertEqual(Day1(input: day1Input).part2(), 6)
    }

    // MARK: - Day 2
    let day2Input = """
"""

    func testDay2Part1() {
        XCTAssertEqual(Day2(input: day2Input).part1(), 0)
    }
    func testDay2Part2() {
        XCTAssertEqual(Day2(input: day2Input).part2(), 0)
    }

    // MARK: - Day 3
    let day3input = """
"""

    func testDay3Part1() {
        XCTAssertEqual(Day3(input: day3input).part1(), 0)
    }

    func testDay3Part2() {
        XCTAssertEqual(Day3(input: day3input).part2(), 0)
    }

    // MARK: - Day 4
    let day4Input = """
"""

    func testDay4Part1() {
        XCTAssertEqual(Day4(input: day4Input).part1(), 0)
    }

    func testDay4Part2() {
        XCTAssertEqual(Day4(input: day4Input).part2(), 0)
    }

    // MARK: - Day 5
    let day5Input = """
"""

    func testDay5Part1() {
        XCTAssertEqual(Day5(input: day5Input).part1(), 0)
    }

    func testDay5Part2() {
        XCTAssertEqual(Day5(input: day5Input).part2(), 0)
    }

    // MARK: - Day 6
    let day6Input = """
"""

    func testDay6Part1() {
        XCTAssertEqual(Day6(input: day6Input).part1(), 0)
    }

    func testDay6Part2() {
        XCTAssertEqual(Day6(input: day6Input).part2(), 0)
    }

    // MARK: - Day 7
    let day7Input = """
"""

    func testDay7Part1() {
        XCTAssertEqual(Day7(input: day7Input).part1(), 0)
    }

    func testDay7Part2() {
        XCTAssertEqual(Day7(input: day7Input).part2(), 0)
    }

    // MARK: - Day 8
    let day8Input = """
"""

    func testDay8Part1() {
        XCTAssertEqual(Day8(input: day8Input).part1(), 0)
    }

    func testDay8Part2() {
        XCTAssertEqual(Day8(input: day8Input).part2(), 0)
    }

    // MARK: - Day 9
    let day9Input = """
"""

    func testDay9Part1() {
        XCTAssertEqual(Day9(input: day9Input).part1(), 0)
    }

    func testDay9Part2() {
        XCTAssertEqual(Day9(input: day9Input).part2(), 0)
    }

    // MARK: - Day 10
    let day10Input = """
"""

    func testDay10Part1() {
        XCTAssertEqual(Day10(input: day10Input).part1(), 0)
    }

    func testDay10Part2() {
        XCTAssertEqual(Day10(input: day10Input).part2(), 0)
    }

    // MARK: - Day 11
    let day11Input = """
"""

    func testDay11Part1() {
        XCTAssertEqual(Day11(input: day11Input).part1(), 0)
    }

    func testDay11Part2() {
        XCTAssertEqual(Day11(input: day11Input).part2(), 0)
    }

    // MARK: - Day 12
    let day12Input = """
"""

    func testDay12Part1() {
        XCTAssertEqual(Day12(input: day12Input).part1(), 0)
    }

    func testDay12Part2() {
        XCTAssertEqual(Day12(input: day12Input).part2(), 0)
    }
}
