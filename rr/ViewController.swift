//
//  ViewController.swift
//  rr
//
//  Created by Tanvir Samad Tonmoy on 7/28/16.
//  Copyright © 2016 Tahia ata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.yellowColor()
        setup()
        //setupWithVisualFormat()
        //another()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setup () {
        let blueView = UIView()
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        blueView.backgroundColor = UIColor.blueColor()
        view.addSubview(blueView)
        
        let centerXPosition = NSLayoutConstraint(item: blueView, attribute: .CenterX, relatedBy: .Equal, toItem: view, attribute: .CenterX, multiplier: 1.0, constant: 0)
        let centerYPosition = NSLayoutConstraint(item: blueView, attribute: .CenterY, relatedBy: .Equal, toItem: view, attribute: .CenterY, multiplier: 1.0, constant: 0)
        let viewWidth = NSLayoutConstraint(item: blueView, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 100.0)
        let viewHeight = NSLayoutConstraint(item: blueView, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 100.0)
        
        view.addConstraints([centerXPosition, centerYPosition, viewHeight, viewWidth])
        
        
        let redView = UIView()
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        redView.backgroundColor = UIColor.redColor()
        blueView.addSubview(redView)
        
        let x = NSLayoutConstraint(item: redView, attribute: .Leading, relatedBy: .Equal, toItem: blueView, attribute: .Leading, multiplier: 1.0, constant: 10.0)
        let y = NSLayoutConstraint(item: redView, attribute: .Trailing, relatedBy: .Equal, toItem: blueView, attribute: .Trailing, multiplier: 1.0, constant: -10.0)
        let w = NSLayoutConstraint(item: redView, attribute: .Top, relatedBy: .Equal, toItem: blueView, attribute: .Top, multiplier: 1.0, constant: 10.0)
        let h = NSLayoutConstraint(item: redView, attribute: .Bottom, relatedBy: .Equal, toItem: blueView, attribute: .Bottom, multiplier: 1.0, constant: -10.0)
        blueView.addConstraints([x,y,w,h])
        
    }
    
    func setupWithVisualFormat(){
        
        let blueView = UIView()
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        blueView.backgroundColor = UIColor.blueColor()
        view.addSubview(blueView)
        
        let redView = UIView()
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        redView.backgroundColor = UIColor.redColor()
        blueView.addSubview(redView)
        
        let views = [
            "blue":blueView,
            "red" :redView
        ]
        
        let metrics = [
            "side": 100,
            "padding": 10
        ]
        
        let viewWidth = NSLayoutConstraint.constraintsWithVisualFormat("H:[blue(side)]", options: [], metrics: metrics, views: views)
        let viewHeight = NSLayoutConstraint.constraintsWithVisualFormat("V:[blue(side)]", options: [], metrics: metrics, views: views)
        view.addConstraints(viewWidth)
        view.addConstraints(viewHeight)
        let centerXPosition = NSLayoutConstraint(item: blueView, attribute: .CenterX, relatedBy: .Equal, toItem: view, attribute: .CenterX, multiplier: 1.0, constant: 0)
        let centerYPosition = NSLayoutConstraint(item: blueView, attribute: .CenterY, relatedBy: .Equal, toItem: view, attribute: .CenterY, multiplier: 1.0, constant: 0)
    
        view.addConstraints([centerXPosition,centerYPosition])
     
        let u = NSLayoutConstraint.constraintsWithVisualFormat("H:|-padding-[red]-padding-|", options: [], metrics: metrics, views: views)
        let v = NSLayoutConstraint.constraintsWithVisualFormat("V:|-padding-[red]-padding-|", options: [], metrics: metrics, views: views)
        blueView.addConstraints(u)
        blueView.addConstraints(v)
        
    }
    
    func another(){
        let blueView = UIView()
        blueView.backgroundColor = .blueColor()
        blueView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blueView)
        
        let redView = UIView()
        redView.backgroundColor = UIColor.redColor()
        redView.translatesAutoresizingMaskIntoConstraints = false
        blueView.addSubview(redView)
        
        
        // Auto layout code using anchors (iOS9+)
         blueView.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
         blueView.centerYAnchor.constraintEqualToAnchor(view.centerYAnchor).active = true
         blueView.widthAnchor.constraintEqualToAnchor(nil, constant: 100).active = true
         blueView.heightAnchor.constraintEqualToAnchor(nil, constant: 100).active = true
        
         redView.topAnchor.constraintEqualToAnchor(blueView.topAnchor, constant: 10.0).active = true
         redView.bottomAnchor.constraintEqualToAnchor(blueView.bottomAnchor, constant: -10.0).active = true
         redView.leadingAnchor.constraintEqualToAnchor(blueView.leadingAnchor, constant: 10.0).active = true
         redView.trailingAnchor.constraintEqualToAnchor(blueView.trailingAnchor, constant: -10.0).active = true
      
    }

}

