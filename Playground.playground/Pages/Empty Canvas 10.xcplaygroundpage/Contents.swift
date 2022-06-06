//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
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
let t = Tortoise(drawingUpon: canvas)

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

// Move the origin from the bottom-left corner of the canvas to it's centre point
canvas.translate(to: Point(x: 100,
                           y: 100))

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
//Up pen Size
t.setPenSize(to: 3)
let scale = 20
t.drawSelf()
//draw outside squares
// make the required functions to make things easier
func drawOutSquare(){
t.forward(steps: scale*5)
t.left(by: 90)
t.forward(steps: scale*5)
t.left(by: 90)
t.forward(steps: scale*5)
t.left(by: 90)
t.forward(steps: scale*5)
t.left(by: 90)
}
// invert cross function
func drawinvertcross(){
    t.forward(steps: scale)
    t.left(by: 90)
    t.forward(steps: scale)
    t.right(by: 90)
    t.forward(steps: scale)
    t.left(by: 90)
    t.forward(steps: scale)
    t.left(by: 90)
    t.forward(steps: scale)
    t.right(by: 90)
    t.forward(steps: scale)
    t.left(by: 90)
    t.forward(steps: scale)
    t.left(by: 90)
    t.forward(steps: scale)
    t.right(by: 90)
    t.forward(steps: scale)
    t.left(by: 90)
    t.forward(steps: scale)
    t.left(by: 90)
    t.forward(steps: scale)
    t.right(by: 90)
    t.forward(steps: scale)
}
func drawsquare(){
    for _ in 1...scale/2{
        t.forward(steps: scale)
        t.left(by: 90)
        t.forward(steps: 1)
        t.left(by: 90)
        t.forward(steps: scale)
        t.right(by: 90)
        t.forward(steps: 1)
        t.right(by: 90)
    
}
    t.penUp()
    t.right(by: 90)
    t.forward(steps: scale)
    t.left(by: 90)
}
func filledCross(){
    drawsquare()
    t.penUp()
    t.left(by: 90)
    t.forward(steps: scale)
    t.right(by: 90)
    t.backward(steps: scale)
    drawsquare()
    t.forward(steps: scale)
    drawsquare()
    t.forward(steps: scale)
    drawsquare()
    t.backward(steps: scale)
    
    
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
