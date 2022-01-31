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
canvas.fillColor = Color(hue: 200, saturation: 44, brightness: 67, alpha: 100)

canvas.lineColor = Color(hue: 90, saturation: 100, brightness: 100, alpha: 100)
canvas.defaultLineWidth = 50
for xValue in stride(from: -300, through: 400, by: 50 ){
    canvas.drawLine(from: Point(x: xValue , y: 100), to: Point(x: xValue + 300, y: 400))
    // repeating lines
    if xValue.isMultiple(of: 100){
        canvas.lineColor = Color(hue: 195, saturation: 100, brightness: 100, alpha: 100)
    
    }else {
        canvas.lineColor = Color(hue: 90, saturation: 100, brightness: 100, alpha: 100)
    }
}
canvas.defaultLineWidth = 20
canvas.lineColor = Color(hue: 150, saturation: 100, brightness: 100, alpha: 100)
for xValue in stride(from: 0, through: 400, by: 50){
    canvas.drawLine(from: Point(x: xValue, y: 100), to: Point(x: xValue, y: 400))
    if xValue.isMultiple(of: 100){
        canvas.lineColor = Color(hue: 150, saturation: 100, brightness: 100, alpha: 100)
    }
    
}
    // rectangles for overlapping lines
    canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 100)
    canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)





// LOADING sign and image
canvas.drawShapesWithBorders = true
canvas.defaultBorderWidth = 10
canvas.drawRectangle(at: Point(x: 25, y: 62), width: 350, height: 25)
canvas.fillColor = Color(hue: 90, saturation: 100, brightness: 100, alpha: 100)
 var figureVertices: [Point] = []
 figureVertices.append(Point(x: 25, y: 62))
figureVertices.append(Point(x: 25, y: 87 ))
figureVertices.append(Point(x: 325, y: 87))
figureVertices.append(Point(x: 300, y: 62))
canvas.drawCustomShape(with: figureVertices)

//TEXT Loading
canvas.drawText(message: "LOADING", at: Point(x: 85, y: 5), size: 50, kerning: 0)
// text top left
canvas.textColor = Color(hue: 150, saturation: 4, brightness: 100, alpha: 100)
canvas.drawText(message: "Leeds Festival", at: Point(x: 10, y: 560), size: 20, kerning: 0)
canvas.drawText(message: "Bramham Park", at: Point(x: 10, y: 530), size: 20, kerning: 0)
canvas.drawText(message: "August 27,28,29", at: Point(x: 10, y: 500), size: 20, kerning: 0)
//text middle
canvas.drawText(message: "2021", at: Point(x: 175, y: 575), size: 20, kerning: 0)
    // text top right
canvas.drawText(message: "Also Appearing", at: Point(x: 250, y: 560), size: 20, kerning: 0)
canvas.drawText(message: "KSI, Digga D", at: Point(x: 260, y: 530), size: 20, kerning: 0)
//CENTRAL CEE text
canvas.drawText(message: "CENTRAL", at: Point(x: 85, y: 450), size: 50, kerning: 0)
canvas.drawText(message: "CEE", at: Point(x: 150, y: 400), size: 50, kerning: 0)











// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .white)
canvas.highPerformance = false

