
import Foundation

enum sensiType {
    case colorTouch
    case sensiPlus
}
protocol Sensi {
    func hasCWire() -> Bool
}

struct ColorTouch:Sensi {
    func hasCWire() -> Bool {
        return true
    }
}

struct SensiPlus:Sensi {
    func hasCWire() -> Bool {
        return false
    }
}

struct FactoryPattern {
    func composeSensiProduct(type:sensiType) -> Sensi {
        if type == .colorTouch {
            return ColorTouch()
        }
        return SensiPlus()
    }
}
