//
//  DragImg.swift
//  my-little-monster
//
//  Created by Mohamad Asyraaf on 23/3/16.
//  Copyright © 2016 Mohamad Asyraaf bin Abdul Rahman. All rights reserved.
//

import Foundation
import UIKit


class DragImg: UIImageView{
   
    var originalPosition: CGPoint!

    override init(frame: CGRect) {
        super.init(frame:frame)
    }
    
    required init?(coder aDecoder:NSCoder){
        super.init(coder:aDecoder)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        originalPosition = self.center
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first{
            let position = touch.locationInView(self.superview)
            self.center = CGPointMake(position.x ,position.y)
            
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.center = originalPosition
    }
}