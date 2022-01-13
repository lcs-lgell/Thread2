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
canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true


// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)
canvas.defaultBorderWidth = 5
canvas.highPerformance = false
canvas.borderColor = Color.black
canvas.fillColor = Color.white
//main face
canvas.drawEllipse(at: Point(x: 90, y: 110), width: 80, height: 70)
p.goToOrigin()
//going to ear
p.goto(dx: 60, dy: 135)
p.penColor = .black
//canvas.fillColor = Color(hue: 47, saturation: 100, brightness: 100, alpha: 100)
canvas.borderColor = Color.black
//canvas.drawLine(from: Point(x: 60, y: 135), to: Point(x: 70, y: 155))
// ears
p.fillColor = Color(hue: 47, saturation: 100, brightness: 100, alpha: 100)
p.drawTo(dx: 10, dy: 20)
p.drawTo(dx: 10, dy: -9)
p.drawTo(dx: -20, dy: -11)
p.goto(dx: 40, dy: 11)
p.drawTo(dx: 10, dy: 9)
p.drawTo(dx: 10, dy: -20)
p.drawTo(dx: -20, dy: 11)
// eyes
print(p.currentPosition())
p.goto(dx: -100, dy: -146)
p.goto(dx: 50, dy: 60)
p.drawCircle(radius: 7)
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
