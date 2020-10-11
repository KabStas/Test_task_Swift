import Foundation

func creatingIntersection(set1: Set<Int>, set2: Set<Int>) {

    let commonValuesSet = set1.intersection(set2)
    let array = commonValuesSet.sorted()	
			
	print(array)
}

if CommandLine.arguments.count == 1 {

	let lengthOfArray1 = Int(readLine()!)!
	var set1: Set<Int> = []

    for _ in 0...lengthOfArray1 - 1 {
        set1.insert(Int(readLine()!)!) 
    }

    let lengthOfArray2 = Int(readLine()!)!
	var set2: Set<Int> = []

    for _ in 0...lengthOfArray2 - 1 {
        set2.insert(Int(readLine()!)!) 
    }

    creatingIntersection(set1: set1, set2: set2)
	
} else {

	let quantityOfNumbers1 = Int(CommandLine.arguments[1])!
	var set1: Set<Int> = []
    
    for i in 2...quantityOfNumbers1 + 1 {
        set1.insert(Int(CommandLine.arguments[i])!) 
    }
	let quantityOfNumbers2 = Int(CommandLine.arguments[quantityOfNumbers1 + 2])!
	var set2: Set<Int> = []
    
    for i in quantityOfNumbers1 + 3...quantityOfNumbers1 + 3 + quantityOfNumbers2 - 1 {
        set2.insert(Int(CommandLine.arguments[i])!) 
    }

    creatingIntersection(set1: set1, set2: set2)
}
