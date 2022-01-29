import UIKit

let array = [10,23,33,45,5,6,77,10,55,2,8,11]
let max = array.count + 1
var tree = [Int](repeating: 0, count: max)

func add(value:Int, at index:Int, max:Int){
    var idx = index
    while(idx<=max){
        print(idx)
        tree[idx] += value
        idx += idx & -idx
    }
    print("---")
}

func getSum(at index: Int) -> Int{

    var idx = index
    var sum = 0
    while(idx>0){
        print(idx)
        sum += tree[idx]
        idx -= idx & -idx
    }
    print("---")
    return sum
}

func main(){
    
    for (idx,each) in array.enumerated(){
        add(value: each, at: idx+1, max: max)
    }
    print("Add Done")
    print(getSum(at: 4))
}

main()
