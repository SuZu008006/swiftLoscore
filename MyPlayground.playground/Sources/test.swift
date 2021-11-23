import Foundation

public func test<T:Equatable>(_ actual:T, _ expect:T) -> Void {
    if (actual == expect) {
      print("passed actual: \(actual), expect: \(expect)")
    } else {
      print("missed actual: \(actual), expect: \(expect)")
    }
}
