import Foundation

func countingMark(speed: Int, time: Int) {
	
    let distance = abs(speed) * time
    let lengthOfRoad = 109
    let quantityOfLaps = distance / lengthOfRoad
    var markOnRoad = 0
    	
    if (speed > 0) {

        markOnRoad = distance - quantityOfLaps * lengthOfRoad

    } else if (speed < 0) {
                
        markOnRoad = lengthOfRoad + quantityOfLaps * lengthOfRoad - distance

    } else {

        markOnRoad = 0
    } 

    print(markOnRoad)
      
}

if CommandLine.arguments.count == 1 {

    let speed = Int(readLine(strippingNewline: true)!)!
	let time = Int(readLine(strippingNewline: true)!)!
	
    countingMark(speed: speed, time: time)
	
} else {

	let speed = Int(CommandLine.arguments[1])!
	let time = Int(CommandLine.arguments[2])!
	
    countingMark(speed: speed, time: time)
}