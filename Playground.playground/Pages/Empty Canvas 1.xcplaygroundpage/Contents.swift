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


// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)
canvas.defaultBorderWidth = 5
canvas.highPerformance = false
canvas.borderColor = Color.black

//main face
canvas.fillColor = Color(hue: 39, saturation: 90, brightness: 100, alpha: 100)
canvas.drawEllipse(at: Point(x: 90, y: 110), width: 80, height: 70)
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
canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = false
canvas.drawShapesWithBorders = true
canvas.defaultBorderWidth = 6
canvas.drawCustomShape(with: [Point(x: 60, y: 135),Point(x: 70, y: 155),Point(x: 80, y: 146)])
canvas.drawCustomShape(with: [Point(x: 100, y: 146),Point(x: 110, y: 155),Point(x: 120, y: 135)])
//nose
canvas.defaultBorderWidth = 5
canvas.drawCustomShape(with: [Point(x: 83, y: 105),Point(x: 97, y: 105),Point(x: 90, y: 95)])
canvas.lineColor = Color.black
canvas.drawLine(from: Point(x: 90, y: 95), to: Point(x: 90, y: 90))
canvas.drawLine(from: Point(x: 90, y: 90), to: Point(x: 80, y: 90))
canvas.drawLine(from: Point(x: 90, y: 90), to: Point(x: 100, y: 90))





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
