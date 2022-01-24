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
canvas.highPerformance = true
canvas.drawShapesWithFill = true

// Show a grid
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 400)
canvas.fillColor = Color(hue: 107, saturation: 63, brightness: 73, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)


//white for circle H87 S55 B88
canvas.fillColor = Color(hue: 107, saturation: 63, brightness: 73, alpha: 100)

canvas.fillColor = Color(hue: 107, saturation: 63, brightness: 73, alpha: 100)

// Draw a grid of circles
canvas.textColor = .black

for xPosition in stride(from: 0, through: 400, by: 40) {
    for yPosition in stride(from: 0, through: 400, by: 40) {
        
        
      
        if yPosition + xPosition <= 400 && xPosition > 0 && yPosition > 0 {
            canvas.fillColor = .white
        } else {
            canvas.fillColor = Color(hue: 107, saturation: 63, brightness: 73, alpha: 100)
        }
      
       
        
                    
                    
                    
                    
                    
                    // Draw the circle
        canvas.drawEllipse(at: Point(x: xPosition, y: yPosition),width: 35, height: 35)
        // Where is this circle?
        //canvas.drawText(message: "(\(xPosition), \n\(yPosition))",at: Point(x: xPosition, y: yPosition - 10),size: 8)

        
    }
}
canvas.lineColor = .black
canvas.drawText(message: "pixies", at: Point(x: 25, y: 420), size: 50)



//canvas.drawAxes(withScale: true, by: 50, color: .white)
canvas.highPerformance = false
