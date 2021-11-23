import UIKit

var greeting = "Hello, playground"

public struct Loscore{
    let name:String
    init(name:String){
        self.name = name
    }
    func identity(_ num:Int) -> Int{
        return num
    }
    func add(_ numA:Int,_ numB:Int) -> Int{
        return numA+numB
    }
    func head(_ arr:[Int]) -> Int{
        return arr.first!
    }
    func tail(_ arr:[Int]) -> Int{
        return arr.last!
    }
    func take(arr:[Int],sliceNum:Int=1) -> [Int]{
        var arr1:[Int] = arr.reversed()
        arr1 = arr1.suffix(sliceNum)
        arr1 = arr1.reversed()
        return arr1
        //print([5,4,3,2,1].prefix(3))
    }
    func takeRight(arr:[Int],sliceNum:Int=1) -> [Int]{
        return arr.suffix(sliceNum)
    }
    func uniq(_ arr:[Int]) -> Set<Int>{
        let arr1:Set = Set(arr)
        return arr1
    }
}

let loscore = Loscore(name:"loscore")
print("loscore name")
test(loscore.name,"loscore")
print("loscore identity")
test(loscore.identity(4),4)
print("loscore add")
test(loscore.add(4,1),5)
print("loscore head")
test(loscore.head([3,2,1]),3)
print("loscore tail")
test(loscore.tail([3,2,1]),1)
print("loscore take")
test(loscore.take(arr:[5,4,3,2,1],sliceNum:2),[5,4])
print("loscore takeRight")
test(loscore.takeRight(arr:[5,4,3,2,1],sliceNum:2),[2,1])
print("loscore uniq")
test(loscore.uniq([5,4,4,4,4]),[5,4])
test(loscore.uniq([3,1,3,4,1]),[3,1,4])




