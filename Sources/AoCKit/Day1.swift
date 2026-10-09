import Algorithms
import Foundation

public final class Day1: Day {
    enum direction: String {
        case left = "L"
        case right = "R"
    }
    
    let input: [(direction, Int)]

    public init(input: String) {
        self.input = input.trimmedLines.compactMap {
            if let d = direction(rawValue: String($0.first!)) {
                let value = Int($0.suffix(from: $0.index($0.startIndex, offsetBy: 1)))!
                return (d, value)
            }
            
            return nil
        }
    }

    public func part1() -> Int {
        var zeros = 0
        var current = 50
        
        for (direction, amount) in input {
            switch direction {
            case .left:
                current -= amount
            case .right:
                current += amount
            }
            
            current %= 100
            
            if current < 0 {
                current += 100
            }
            
            if current == 0 {
                zeros += 1
            }
        }
        
        return zeros
    }

    public func part2() -> Int {
        var zeros = 0
        var current = 50
        
        for (direction, amount) in input {
            let startedAtZero = current == 0
            
            switch direction {
            case .left:
                while current - amount < 0 {
                    
                }
                
                current -= amount
            case .right:
                current += amount
            }
            
            if current < 0 {
                while current < 0 {
                    current += 100
                    zeros += 1
                }
                
                if startedAtZero {
                    zeros -= 1
                }
            } else if current >= 100 {
                while current >= 100 {
                    current -= 100
                    zeros += 1
                }
            } else if current == 0 {
                zeros += 1
            }
        }
        
        // !5966
        // !5849
        // !5790
        // ?5743
        // < 6054
        // > 4800ish
        
        return zeros
    }
}
