// http://stackoverflow.com/questions/26578023/animate-drawing-of-a-circle
import UIKit

class CircleView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clearColor()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func drawRect(rect: CGRect) {
        // Get the Graphics Context
        var context = UIGraphicsGetCurrentContext();
        
        // Set the circle outerline-width
        CGContextSetLineWidth(context, 5.0);
        
        // Set the circle outerline-colour
        UIColor.redColor().set()
        
        // Create Circle
        CGContextAddArc(context, frame.size.width/2, frame.size.height/2, (frame.size.width - 10) / 2, 0.0, CGFloat(M_PI * 2.0), 1)
        
        // Draw
        CGContextStrokePath(context);
    }
}