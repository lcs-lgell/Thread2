//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 400
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




/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Begin writing your code below (you can remove the examples shown)


// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
canvas.lineColor = .blue
canvas.drawAxes(withScale: true, by: 50, color: .black)
//A loop to express the o, 50, 100 pattern
for someValue in stride(from: 0, through: 400, by: 50){
    someValue
    //draw line bottom left to top right
    canvas.drawLine(from: Point(x: someValue , y: 0), to: Point(x: 400, y: someValue))
    //bottom left to top right
    canvas.drawLine(from: Point(x: someValue , y: 400), to: Point(x: 0, y: someValue))
    //bottom right to top left
    //canvas.drawLine(from: Point(x: someValue , y: 400), to: Point(x: 400, y: someValue ))
    
    
    
}

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
