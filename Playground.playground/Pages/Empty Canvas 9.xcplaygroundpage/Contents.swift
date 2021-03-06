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
let scale = 20
let diagonal = Int(sqrt(2.0) * Double (scale))
t.setPenSize(to: 2)
t.drawSelf()
t.penUp()
t.left(by: 90)
t.forward(steps: scale)
t.right(by: 90)
t.penDown()

func drawArrow () {
    //start
    t.forward(steps: scale * 3)
    t.right(by: 90)
    t.forward(steps: scale)
    t.left(by: 135)
    t.forward(steps: diagonal * 2)
    t.left(by: 90)
    t.forward(steps: diagonal * 2)
    t.left(by: 135)
    t.forward(steps: scale)
    t.right(by: 90)
    t.forward(steps: scale * 3)
    t.left(by: 90)
    t.forward(steps: scale * 2)
    t.left(by: 90)
}
for _ in 1...6{
    for _ in 1...5{
        drawArrow()
        t.penUp()
        t.forward(steps: scale*5)
        t.penDown()
    }
    //make more rows
    t.currentPosition()
    //move pen
    t.penUp()
    t.backward(steps: scale*25)
    t.left(by: 90)
    t.forward(steps: 84)
    t.right(by: 90)
    t.penDown()
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
