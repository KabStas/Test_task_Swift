import Foundation

func removingDuplicates(array: [Int]) {
	
    let array = array
    var arrayOfUniqueValues: [Int] = []
    var countOfEqualValues = 0;

    for i in 0...array.count - 1 {

        countOfEqualValues = 0;

        for j in 0...array.count - 1 {
               
            if array[i] == array[j] {

                countOfEqualValues += 1; 
            } 
        } 
        if countOfEqualValues == 1 {

            arrayOfUniqueValues.append(array[i])
        }
    }

    print(arrayOfUniqueValues)
      
}

if CommandLine.arguments.count == 1 {

    let lengthOfArray = Int(readLine()!)!
	var array: [Int] = []

    for _ in 0...lengthOfArray - 1 {
        array.append(Int(readLine()!)!) 
    }

    removingDuplicates(array: array)
	
} else {

	let lengthOfArray = Int(CommandLine.arguments[1])!
	var array: [Int] = []
    
    for i in 2...lengthOfArray + 1 {
        array.append(Int(CommandLine.arguments[i])!) 
    }
	
    removingDuplicates(array: array)
}