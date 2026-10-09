# Advent of Code Swift Template - AI Coding Guide

## Project Architecture

This is an **Advent of Code solution framework** built with Swift Package Manager for macOS. It has three main components:

- **AoC** (executable): Command-line runner in `Sources/AoC/main.swift` that orchestrates puzzle execution and timing
- **AoCKit** (framework): Contains all puzzle solutions (`Day1.swift`-`Day12.swift`) and shared utilities in `Sources/AoCKit/`
- **AoCKitTests**: XCTest suite for validating solutions against AoC examples

### Critical Configuration

A `Sources/AoC/config.swift` file is **required** but git-ignored. Structure:
```swift
enum Config {
    static let year = 2025
    static let session = "[YOUR_AOC_SESSION_COOKIE]"
}
```
The session cookie enables automatic puzzle input fetching from adventofcode.com.

## Day Implementation Pattern

Each day follows a strict protocol-based pattern (`Sources/AoCKit/Day.swift`):

```swift
public final class DayX: Day {
    let input: [ParsedType]  // Parse in init, not in part methods
    
    public init(input: String) throws {
        self.input = input.trimmedLines  // Use String extensions
    }
    
    public func part1() throws -> Int { /* solution */ }
    public func part2() throws -> Int { /* solution */ }
}
```

**Key conventions:**
- Parse all input in `init()` - both parts use the same parsed data
- Import `Algorithms` for Apple's swift-algorithms package
- Return type must match the associated type `T` (commonly `Int`)
- Register new days in `Sources/AoC/main.swift` days dictionary (lines 31-43)

## Essential Extension Utilities

`Sources/AoCKit/Extensions/` contains AoC-specific helpers:

**String+Extension.swift:**
- `.trimmedLines` → `[String]` - split by newlines, trim whitespace
- `.trimmedInts` → `[Int]` - parse lines as integers
- `.commaSeparatedInts` → `[Int]` - parse comma-delimited numbers
- `.binaryAsInt` → `Int?` - convert binary string to decimal
- `[offset]` subscript - character at index with safe variant `[safe: offset]`

**Array+Extension.swift:**
- `.mode` - most frequent elements (requires `Hashable`)
- `.counts` - frequency dictionary `[Element: Int]`
- `.verticalSlice(index)` - extract column from 2D array
- `[safe: index]` - bounds-checked subscript

**Character+Extension.swift:**
- `.ord` → `Int?` - ASCII value of character

## Development Workflow

### Running Solutions
```bash
swift run AoC <day>     # Run specific day (e.g., swift run AoC 1)
swift run AoC           # Auto-detects current December day or defaults to Day 1
```

Input files auto-download to `Input/day<N>.txt` if session cookie configured.

### Testing (TDD Approach)
Use AoC's example inputs/outputs for test-driven development:

1. Add example input to test in `Tests/AoCKitTests/AoC_Tests.swift`:
```swift
let day5Input = """
example input from puzzle
"""

func testDay5Part1() {
    XCTAssertEqual(try Day5(input: day5Input).part1(), expectedValue)
}
```

2. Run tests via Xcode or:
```bash
xcodebuild test -scheme AoC -destination platform="macOS"
```

### Building with Xcode
Open `AoC.xcodeproj` for full IDE support. The project uses:
- Swift 5.3+ (see `Package.swift`)
- Dependency: `apple/swift-algorithms` (version 1.0.0+)

## Graph Utilities

`Sources/AoCKit/Utilities/Graph.swift` provides Dijkstra's algorithm for pathfinding puzzles:

```swift
protocol Graph<Name> { var nodes: [Node<Name>], edges: [Edge<Name>] }
extension Graph {
    func djikstraShortestPaths(from: Name) -> [Name: Int]
}
```

## CI/CD Notes

- **GitHub Actions** (`.github/workflows/swift.yml`): Runs on `main`/`develop` branches
- Uses `slather` (Ruby gem in `Gemfile`) for code coverage
- Coverage reports sent to Codecov
- `config.swift` injected from GitHub Secrets during CI

## Anti-Patterns to Avoid

- **Don't** re-parse input strings in `part1()`/`part2()` - do it once in `init()`
- **Don't** mutate shared state between part1 and part2 - they run sequentially
- **Don't** forget to add new Day classes to the `days` dictionary in `main.swift`
- **Don't** use heavy computation in `init()` - the runner instantiates all days at startup

## Common AoC Patterns in this Codebase

- 2D grids: Use `Array where Element: Collection` with `.verticalSlice()`
- Character puzzles: Leverage `.ord` and `.isLowercase`/`.isUppercase`
- Binary conversions: Use `.binaryAsInt` directly
- Frequency counting: Use `.mode` or `.counts` extensions
