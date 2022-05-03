import UIKit

//func solve<T: Comparable>(_ array1: [T], _ array2: [T]) -> [T] {
//    for element in array2.indices {
//        if let indexToRemove = array1.firstIndex(of: array2[element]) {
//            var newArray1 = array1
//            var newArray2 = array2
//            newArray1.remove(at: indexToRemove)
//            newArray2.remove(at: element)
//            return solve(newArray1, newArray2)
//        }
//    }
//    return array2.sorted(by: <)
//}

func solve<T: Comparable & Hashable>(_ array1: [T], _ array2: [T]) {

    let reducedArray1 = array1.reduce(into: [:]) { $0 [$1, default: 0] += 1 }
    let reducedArray2 = array2.reduce(into: [:]) { $0 [$1, default: 0] += 1 }
    let elements: Set<T> = Set(array2.filter { reducedArray1[$0] != reducedArray2[$0] }.map { $0 })
    debugPrint(elements.sorted(by: <))
    
}

//let array1 = ["fish", "goat", "deer", "goat", "bear"]
//let array2 = ["ant", "bear", "goat"]

//let array1 = [9, 4, 7, 9, 3, 9]
//let array2 = [9, 11, 9, 13, 9]

let array1 = ["yes", "yes", "no", "never"]
let array2 = ["yes", "no", "yes", "sometimes"]

//let array1 = [8, 8, 7, 2, 1, 7, 9]
//let array2 = [14, 8, 2, 7, 7]

solve(array1, array2)



