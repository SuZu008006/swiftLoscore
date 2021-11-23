import Foundation

public struct Loscore{
    public let name:String
    public init(name:String){
        self.name = name
    }
    public func identity(_ num:Int) -> Int{
        return num
    }
    public func add(_ numA:Int,_ numB:Int) -> Int{
        return numA+numB
    }
    public func head(_ arr:[Int]) -> Int{
        return arr.first!
    }
    public func tail(_ arr:[Int]) -> Int{
        return arr.last!
    }
    public func take(arr:[Int],sliceNum:Int=1) -> [Int]{
        var arr1:[Int] = arr.reversed()
        arr1 = arr1.suffix(sliceNum)
        arr1 = arr1.reversed()
        return arr1
        //print([5,4,3,2,1].prefix(3))
    }
    public func takeRight(arr:[Int],sliceNum:Int=1) -> [Int]{
        return arr.suffix(sliceNum)
    }
    public func uniq(_ arr:[Int]) -> Set<Int>{
        let arr1:Set = Set(arr)
        return arr1
    }
}
