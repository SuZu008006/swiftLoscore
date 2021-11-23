import Foundation

public func test<T:Equatable>(_ actual:T, _ expect:T) -> Void {
    if (actual == expect) {
      print("passed")
    } else {
      print("missed actual: \(actual), expect: \(expect)")
    }
}
