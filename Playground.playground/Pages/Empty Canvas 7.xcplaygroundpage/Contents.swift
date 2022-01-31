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





/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
canvas.highPerformance = true
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false
// colors for lines and rectangle
canvas.fillColor = Color(hue: 16, saturation: 100, brightness: 100, alpha: 100)

canvas.lineColor = Color(hue: 90, saturation: 100, brightness: 100, alpha: 100)
canvas.defaultLineWidth = 50
for xValue in stride(from: -300, through: 400, by: 50 ){
    canvas.drawLine(from: Point(x: xValue , y: 100), to: Point(x: xValue + 300, y: 400))
    // repeating lines
    if xValue.isMultiple(of: 100){
        canvas.lineColor = .black
    
    }else {
        canvas.lineColor = Color(hue: 90, saturation: 100, brightness: 100, alpha: 100)
    }
    // rectangles for overlapping lines
    canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 100)
    canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)

    
    
}
        
// LOADING sign and image
canvas.drawShapesWithBorders = true
canvas.defaultBorderWidth = 10
canvas.drawRectangle(at: Point(x: 25, y: 50), width: 350, height: 25)
canvas.fillColor = Color(hue: 90, saturation: 100, brightness: 100, alpha: 100)
 var figureVertices: [Point] = []
 figureVertices.append(Point(x: 25, y: 50))
figureVertices.append(Point(x: 25, y: 75 ))
figureVertices.append(Point(x: 325, y: 75))
figureVertices.append(Point(x: 300, y: 50))
canvas.drawCustomShape(with: figureVertices)
















// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .white)
canvas.highPerformance = false

