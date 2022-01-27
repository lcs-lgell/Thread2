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
canvas.fillColor = Color(hue: 17, saturation: 95, brightness: 95, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)
canvas.fillColor = Color(hue: 49, saturation: 100, brightness: 100, alpha: 100)
for xValue in stride(from: 0, through: 400, by: 40){
    for yValue in stride(from: 200, through: 600, by: 40){
        var figureVertices: [Point] = []
        figureVertices.append(Point(x: xValue + 0, y: yValue + 0))
        figureVertices.append(Point(x: xValue + 40, y: yValue + 40))
        figureVertices.append(Point(x: xValue + 40, y: yValue + 0))
        canvas.drawCustomShape(with: figureVertices)
        if yValue <= xValue + 160  {
            canvas.fillColor = Color(hue: 49, saturation: 100, brightness: 100, alpha: 100)
        } else if  yValue >= 600{
            canvas.fillColor = Color(hue: 49, saturation: 100, brightness: 100, alpha: 100)
            
        }else { canvas.fillColor = Color(hue: 79, saturation: 5, brightness: 88, alpha: 100)
        }
        //canvas.drawText(message: "(\(xValue), \n\(yValue - 200))",at: Point(x: xValue, y: yValue - 10),size: 8)
            

}
}
canvas.textColor = Color(hue: 79, saturation: 5, brightness: 88, alpha: 100)
canvas.drawText(message: "talking heads", at: Point(x: 20, y: 140), size: 40, kerning: 0)
canvas.drawText(message: "friday, saturday, sunday", at: Point(x: 20, y: 35), size: 8, kerning: 0)
canvas.drawText(message: "september 12, 13, 14, 1975", at: Point(x: 20, y: 15), size: 8, kerning: 0)
canvas.drawText(message: "at cbgb and omfug", at: Point(x: 150, y: 35), size: 8, kerning: 0)
canvas.drawText(message: "315 bowery, new york city", at: Point(x: 150, y: 15), size: 8, kerning: 0)
canvas.drawText(message: "also apperaing:", at: Point(x: 280, y: 35), size: 8, kerning: 0)
canvas.drawText(message: "from brooklyn, the shirts", at: Point(x: 280, y: 15), size: 8, kerning: 0)




//canvas.drawAxes(withScale: true, by: 50, color: .black)


canvas.highPerformance = false
