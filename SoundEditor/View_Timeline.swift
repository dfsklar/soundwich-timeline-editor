//
//  View_Timeline.swift
//  SoundEditor
//
//  Created by David Sklar on 9/26/15.
//  Copyright © 2015 David Sklar. All rights reserved.
//

import UIKit

class View_Timeline: UIView {
    
    @IBOutlet var contentView: View_Timeline!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    
    
    func initSubviews() {
        let nib = UINib(nibName: "View_Timeline", bundle: nil)
        nib.instantiateWithOwner(self, options: nil)
        /*
        contentView.frame = bounds
        addSubview(contentView)
        */
        
        // custom initialization logic
    }
    


    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        
        let context = UIGraphicsGetCurrentContext()
        
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let components : [CGFloat] = [1.0, 1.0, 1.0, 1.0]
        let color = CGColorCreate(colorSpace, components)
        
        CGContextSetStrokeColorWithColor(context, color)
        CGContextMoveToPoint(context, 0, 0)
        CGContextAddLineToPoint(context, 300, 300)
        CGContextStrokePath(context)
        
    }
    

}
