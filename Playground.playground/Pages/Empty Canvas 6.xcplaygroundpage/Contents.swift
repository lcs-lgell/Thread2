//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

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


// Show a grid

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
canvas.highPerformance = true
canvas.drawShapesWithFill = true
canvas.fillColor = .orange
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)
canvas.fillColor = .white
for xValue in stride(from: 0, through: 400, by: 40){
    for yValue in stride(from: 0, through: 400, by: 40){
            
            
            
            
            
canvas.drawCustomShape(with: [Point(x: xValue, y: yValue),Point(x: xValue + 20 , y: yValue + 20 ),Point(x: 0, y: 0)])
}
}
canvas.drawAxes(withScale: true, by: 50, color: .black)

//canvas.drawCustomShape(with: [Point(x: 0, y: 0),Point(x: 40, y: 40),Point(x: 40, y: 0)])
canvas.highPerformance = false
