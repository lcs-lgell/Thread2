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
canvas.translate(to: Point(x: 0,
                           y: 0))

// Show a grid
//canvas.drawAxes(withScale: true, by: 20, color: .black)
// PEN COLOR
t.setPenColor(to: .red
)
/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
canvas.highPerformance = true
//Up pen Size
t.setPenSize(to: 1)
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
//squares for filling in
func drawsquare(){
    for i in 1...scale/2{
        t.forward(steps: scale)
        t.left(by: 90)
        t.forward(steps: 1)
        t.left(by: 90)
        t.forward(steps: scale)
        t.right(by: 90)
        if i == scale / 2 {
            t.penUp()
        }
        t.forward(steps: 1)
        t.right(by: 90)
        if i == scale/2 {
        t.penDown()
        }
}
    t.penUp()
    t.right(by: 90)
    t.forward(steps: scale)
    t.left(by: 90)
    t.penDown()
}
//filled in cross
func filledCross(){
    drawsquare()
    t.left(by: 90)
    t.forward(steps: scale)
    t.right(by: 90)
    t.backward(steps: scale)
    drawsquare()
    t.forward(steps: scale)
    drawsquare()
    t.forward(steps: scale)

    drawsquare()
    t.penUp()
    t.backward(steps: scale)
    t.left(by: 90)
    t.forward(steps: scale)
    t.right(by: 90)
    t.penDown()
    drawsquare()
    
}
//function for a square with empty cross but filled in sides
func filledSquare(){
    for _ in 1...5{
    drawsquare()
t.forward(steps: scale)
    }
    t.backward(steps: scale*5)
    t.left(by: 90)
    t.forward(steps: scale)
    t.right(by: 90)
    for _ in 1...2{
    drawsquare()
t.forward(steps: scale)
    }
    t.penUp()
    t.forward(steps: scale)
    t.penDown()
    for _ in 1...2{
    drawsquare()
t.forward(steps: scale)
    }
    t.penUp()
    t.backward(steps: scale*5)
    t.left(by: 90)
    t.forward(steps: scale)
    t.right(by: 90)
    t.penDown()
    drawsquare()

    t.penUp()
    t.forward(steps: scale*4)
    t.penDown()
    drawsquare()
    t.penUp()
    t.backward(steps: scale*4)
    t.left(by: 90)
    t.forward(steps: scale)
    t.right(by: 90)
    t.penDown()
    for _ in 1...2{
    drawsquare()
t.forward(steps: scale)
    }
    t.penUp()
    t.forward(steps: scale)
    t.penDown()
    for _ in 1...2{
    drawsquare()
t.forward(steps: scale)
    }
    t.penUp()
    t.backward(steps: scale*5)
    t.left(by: 90)
    t.forward(steps: scale)
    t.right(by: 90)
    t.penDown()
    for _ in 1...5{
    drawsquare()
t.forward(steps: scale)
    }
}
//Draw the actual Tesselation
//boxes/grid of Tesselation
for _ in 1...6{
for _ in 1...6{
    drawOutSquare()
    t.penUp()
    t.forward(steps: scale*5)
    t.penDown()
}
    t.penUp()
    t.backward(steps: scale*30)
    t.left(by: 90)
    t.forward(steps: scale*5)
    t.right(by: 90)
    t.penDown()
}
//goto origin
t.penUp()
t.right(by: 90)
t.forward(steps: scale*30)
t.currentPosition()
t.left(by: 90)
t.penDown()
//LOOP for all the filled in squares
for _ in 1...3{
//draw the filled in squares
for _ in 1...3{
filledSquare()
    t.penUp()
t.right(by: 90)
t.forward(steps: scale*4)
t.left(by: 90)
t.forward(steps: scale*5)
t.currentPosition()
    t.penDown()
}
//goto origin of next starting row
    t.penUp()
t.backward(steps: scale*30)
t.currentPosition()
t.left(by: 90)
t.forward(steps: scale*5)
t.right(by: 90)
t.forward(steps: scale*5)
    t.penDown()
//second Row of filled squares
for _ in 1...3{
    filledSquare()
    t.penUp()
    t.right(by: 90)
    t.forward(steps: scale*4)
    t.left(by: 90)
    t.forward(steps: scale*5)
    t.currentPosition()
    t.penDown()
}
//goto x=0 and up to next row
    t.penUp()
t.backward(steps: scale*35)
t.left(by: 90)
t.forward(steps: scale*5)
t.right(by: 90)
    t.penDown()
}
//goto middle of the first row to start filled crosses
t.currentPosition()
t.penUp()
t.right(by: 90)
t.forward(steps: scale*29)
t.left(by: 90)
//at origin
for _ in 1...3{
//start the filled cross rows
    t.penUp()
t.forward(steps: scale*7)
t.penDown()
for _ in 1...3{
filledCross()
t.penUp()
t.forward(steps: scale*10)
t.right(by: 90)
t.forward(steps: scale*2)
t.left(by: 90)
t.penDown()
}
//bring pen back to origin of next cross
t.currentPosition()
t.penUp()
t.backward(steps: scale*35)
t.currentPosition()
t.left(by: 90)
t.forward(steps: scale*5)
t.right(by: 90)
t.penDown()
//loop for second row
for _ in 1...3{
filledCross()
t.penUp()
t.forward(steps: scale*10)
t.right(by: 90)
t.forward(steps: scale*2)
t.left(by: 90)
t.penDown()
}
//bring origin to next row of crosses
t.currentPosition()
t.penUp()
t.backward(steps: scale*32)
t.left(by: 90)
t.forward(steps: scale*5)
t.right(by: 90)
t.penDown()
}
//bring to origin
t.currentPosition()
t.right(by: 90)
t.forward(steps: scale*31)
t.currentPosition()





canvas.highPerformance = false

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
