import Foundation

func countingDistance(lengthOfPool: Int, widthOfPool: Int, distanceToLongSide1: Int, distanceToShortSide1: Int) {

	let distanceToLongSide2 = widthOfPool - distanceToLongSide1
	let distanceToShortSide2 = lengthOfPool - distanceToShortSide1
	let numbers: [Int] = [distanceToLongSide1, distanceToShortSide1, distanceToLongSide2, distanceToShortSide2]
			
	print(numbers.min()!)
}

if CommandLine.arguments.count == 1 {

	let lengthOfPool = Int(readLine(strippingNewline: true)!)!
	let widthOfPool = Int(readLine(strippingNewline: true)!)!
	let distanceToLongSide1 = Int(readLine(strippingNewline: true)!)!
	let distanceToShortSide1 = Int(readLine(strippingNewline: true)!)!  

	countingDistance(lengthOfPool: lengthOfPool, widthOfPool: widthOfPool, 
		distanceToLongSide1: distanceToLongSide1, distanceToShortSide1: distanceToShortSide1)
	
} else {

	let lengthOfPool = Int(CommandLine.arguments[1])!
	let widthOfPool = Int(CommandLine.arguments[2])!
	let distanceToLongSide1 = Int(CommandLine.arguments[3])!
	let distanceToShortSide1 = Int(CommandLine.arguments[4])! 
    
    	countingDistance(lengthOfPool: lengthOfPool, widthOfPool: widthOfPool, 
		distanceToLongSide1: distanceToLongSide1, distanceToShortSide1: distanceToShortSide1)
}
