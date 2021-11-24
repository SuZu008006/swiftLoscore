import UIKit

var greeting = "Hello, playground"

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
print("loscore size")
test(loscore.size([5,4,4,4,4]),5)

print("loscore each")

print("sample")
loscore.sample(title: "テストaasaaa") { test in
//Stringを返すことに従えば、あとはどのように加工してもOK
return "\(test)です"
}


print("polymophism")
print("polymophism Ellipse")
let testObj = Ellipse("ellipse", 100, 200);
test(testObj,{tag: "ellipse", rx: 100, ry: 200})
