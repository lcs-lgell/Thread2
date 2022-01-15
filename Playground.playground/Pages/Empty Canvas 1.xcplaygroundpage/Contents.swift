//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 180
let preferredHeight = 220
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics
import Darwin

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = true
canvas.highPerformance = true
//drawer where the cats legs go over
canvas.fillColor = Color(hue: 30, saturation: 69, brightness: 51, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 180, height: 80)
canvas.drawShapesWithBorders = true
canvas.defaultBorderWidth = 10
canvas.drawRectangle(at: Point(x: 20, y: 20), width: 60, height: 40)
canvas.drawRectangle(at: Point(x: 100, y: 20), width: 60, height: 40)
canvas.drawEllipse(at: Point(x: 50, y: 40), width: 5, height: 5)
canvas.drawEllipse(at: Point(x: 130, y: 40), width: 5, height: 5)

//window background
canvas.defaultBorderWidth = 3
canvas.fillColor = Color(hue: 210, saturation: 88, brightness: 100, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 80), width: 180, height: 140)
canvas.fillColor = Color.white
// the sun
canvas.drawShapesWithBorders = false
canvas.fillColor = Color(hue: 60, saturation: 100, brightness: 100, alpha: 100)
canvas.drawEllipse(at: Point(x: 115, y: 160), width: 30, height: 30)
canvas.fillColor = Color.white
canvas.drawShapesWithBorders = true
// left bar
canvas.drawRectangle(at: Point(x: 42, y: 84), width: 10, height: 96)
//to middle
canvas.drawRectangle(at: Point(x: 52, y: 170), width: 80, height: 10)
// right bar
canvas.drawRectangle(at: Point(x: 128, y: 84), width: 10, height: 96)
// middle middle bar
canvas.drawRectangle(at: Point(x: 0, y: 76), width: 180, height: 8)






canvas.drawShapesWithBorders = false
canvas.fillColor = Color.white
canvas.drawEllipse(at: Point(x: 70, y: 60), width: 20, height: 13)
canvas.drawEllipse(at: Point(x: 110, y: 60), width: 20, height: 13)
canvas.drawShapesWithBorders = true
// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

canvas.borderColor = Color.black
// fill of left leg/arm
canvas.defaultBorderWidth = 2
canvas.drawShapesWithFill = true
canvas.fillColor = Color(hue: 17, saturation: 8, brightness: 52, alpha: 100)
canvas.drawRectangle(at: Point(x: 60, y: 60), width: 20, height: 24)

//fill of right leg/arm
canvas.defaultBorderWidth = 2
canvas.fillColor = Color(hue: 17, saturation: 8, brightness: 52, alpha: 100)
canvas.drawRectangle(at: Point(x: 100, y: 60), width: 20, height: 24)

canvas.defaultBorderWidth = 5

//main face
canvas.fillColor = Color(hue: 17, saturation: 8, brightness: 52, alpha: 100)
canvas.drawEllipse(at: Point(x: 90, y: 110), width: 80, height: 70)
//white spots
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false
canvas.fillColor = Color.white
canvas.drawEllipse(at: Point(x: 65, y: 70), width: 5, height: 13)
canvas.drawEllipse(at: Point(x: 75, y: 120), width: 30, height: 35)
canvas.drawEllipse(at: Point(x: 110, y: 140), width: 20, height: 20)
canvas.drawEllipse(at: Point(x: 110, y: 95), width: 20, height: 10)


canvas.drawShapesWithBorders = true

//eyes
canvas.defaultBorderWidth = 3
canvas.fillColor = Color.white
canvas.drawEllipse(at: Point(x: 104, y: 120), width: 14, height: 14)
canvas.drawEllipse(at: Point(x: 76, y: 120), width: 14, height: 14)
//pupils
canvas.fillColor = Color.black

canvas.drawEllipse(at: Point(x: 103, y: 118), width: 5, height: 5)
canvas.drawEllipse(at: Point(x: 77, y: 118), width: 5, height: 5)

//Ears
canvas.drawShapesWithFill = true

canvas.defaultBorderWidth = 6
canvas.fillColor = Color(hue: 17, saturation: 8, brightness: 52, alpha: 100)
canvas.drawCustomShape(with: [Point(x: 60, y: 135),Point(x: 70, y: 155),Point(x: 80, y: 146)])
canvas.drawCustomShape(with: [Point(x: 100, y: 146),Point(x: 110, y: 155),Point(x: 120, y: 135)])
//nose
canvas.defaultBorderWidth = 5
canvas.drawCustomShape(with: [Point(x: 83, y: 105),Point(x: 97, y: 105),Point(x: 90, y: 95)])
//mouth
canvas.lineColor = Color.black
canvas.drawLine(from: Point(x: 90, y: 95), to: Point(x: 90, y: 90))
canvas.drawLine(from: Point(x: 90, y: 90), to: Point(x: 80, y: 90))
canvas.drawLine(from: Point(x: 90, y: 90), to: Point(x: 100, y: 90))

//actual leg code
canvas.defaultLineWidth = 2
canvas.drawLine(from: Point(x: 60, y: 84), to: Point(x: 60, y: 60))

canvas.drawCurve(from: Point(x: 60, y: 60), to: Point(x: 80, y: 60), control1: Point(x: 60, y: 50), control2: Point(x: 80, y: 50))
canvas.drawLine(from: Point(x: 60, y: 60), to: Point(x: 80, y: 60))
canvas.drawLine(from: Point(x: 80, y: 60), to: Point(x: 80, y: 74))
canvas.drawLine(from: Point(x: 66, y: 55), to: Point(x: 66, y: 57))
canvas.drawLine(from: Point(x: 74, y: 55), to: Point(x: 74, y: 57))

canvas.drawLine(from: Point(x: 120, y: 84), to: Point(x: 120, y: 60))
canvas.drawCurve(from: Point(x: 120, y: 60), to: Point(x: 100, y: 60), control1: Point(x: 120, y: 50), control2: Point(x: 100, y: 50))
canvas.drawLine(from: Point(x: 120, y: 60), to: Point(x: 100, y: 60))
canvas.drawLine(from: Point(x: 100, y: 60), to: Point(x: 100, y: 74))
canvas.drawLine(from: Point(x: 106, y: 55), to: Point(x: 106, y: 57))
canvas.drawLine(from: Point(x: 114, y: 55), to: Point(x: 114, y: 57))







canvas.highPerformance = false
/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)



/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
