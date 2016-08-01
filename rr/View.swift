//
//  View.swift
//  rr
//
//  Created by Tanvir Samad Tonmoy on 7/28/16.
//  Copyright © 2016 Tahia ata. All rights reserved.
//

import UIKit

class View: UIView {
    var blueView : UIView?
    
    override init(frame : CGRect) {
        super.init(frame : frame)
        self.backgroundColor = UIColor.whiteColor()
        self.setup()
    }
    
    convenience init () {
        self.init(frame:CGRect.zero)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("This class does not support NSCoding")
    }
    
    func setup(){
        blueView = UIView()
        blueView?.backgroundColor = UIColor.blueColor()
        blueView?.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(blueView!)
        let centerXPosition = NSLayoutConstraint(item: blueView!, attribute: .CenterX, relatedBy: .Equal, toItem: self, attribute: .CenterX, multiplier: 1.0, constant: 0)
        let centerYPosition = NSLayoutConstraint(item: blueView!, attribute: .CenterY, relatedBy: .Equal, toItem: self, attribute: .CenterY, multiplier: 1.0, constant: 0)
        let viewWidth = NSLayoutConstraint(item: blueView!, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 100.0)
        let viewHeight = NSLayoutConstraint(item: blueView!, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 100.0)
        self.addConstraints([centerXPosition, centerYPosition, viewWidth, viewHeight])

        
        
    }
}
