# AoC-template
[![swift workflow](https://github.com/mikezs/AoC-template/actions/workflows/swift.yml/badge.svg)](https://github.com/mikezs/AoC-template/actions)
[![codecov](https://codecov.io/gh/mikezs/AoC-template/branch/develop/graph/badge.svg?token=64OZZEYDTF)](https://codecov.io/gh/mikezs/AoC-template)
[![Sonarcloud Status](https://sonarcloud.io/api/project_badges/measure?project=mikezs_AoC-template&metric=alert_status)](https://sonarcloud.io/dashboard?id=mikezs_AoC-template)

## Advent Of Code (AoC) Template

This are my solutions to the [Advent Of Code](https://adventofcode.com/) event. Normally I play along with [timsearle](https://github.com/timsearle/) and [Sfrost007](https://github.com/sfrost007/), please check out their solutions if you're interested.

### Project approach

This swift package manager project contains my MacOS command line tool, a framework with all of the logic to solve the puzzles and a test framework to validate against the AoC examples that are given in the puzzle descriptions.

The idea is to use the example problems/solutions provided in the puzzles to do TDD, but sometimes there are no examples that allow TDD.

This project requires a `config.swift` file to be created. This is the format of the file:

```swift
import Foundation

enum Config {
    static let year = 2025
    // This is the session cookie from your browser after logging in to https://adventofcode.com/
    static let session = "[TOKEN]"
}
```

### Running

To run day 1:
- Either create a file called day1.txt with your puzzle input, or add your AoC session cookie to the code and it'll be created automatically
- Then run `swift run AoC 1` in Terminal

## Implementation notes

### Day 1
