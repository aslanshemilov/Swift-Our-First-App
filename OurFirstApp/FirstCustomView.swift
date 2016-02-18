//
//  FirstCustomView.swift
//  OurFirstApp
//
//  Created by Joshua Johanan on 2/16/16.
//  Copyright © 2016 Joshua Johanan. All rights reserved.
//

import UIKit

protocol FirstCustomViewDelegate {
    func buttonWasPressed(sender: UIButton)
}

class FirstCustomView: UIView {
    @IBOutlet var view: UIView!
    @IBOutlet var button: UIButton!
    var delegate: FirstCustomViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //load the Interface Builder file
        NSBundle.mainBundle().loadNibNamed("FirstCustomView", owner: self, options: nil)
        //set bounds correctly
        self.bounds = self.view.bounds
        //add as subview
        self.addSubview(self.view)
        
        let custom = CustomControl()
        self.view.addSubview(custom)
        custom.translatesAutoresizingMaskIntoConstraints = false
        let top = NSLayoutConstraint(item: custom,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: button,
            attribute: .Bottom,
            multiplier: 1.0,
            constant: 8.0)
        
        let centerH = NSLayoutConstraint(item: custom,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: view,
            attribute: .CenterX,
            multiplier: 1.0,
            constant: 0.0)
        
        let height = NSLayoutConstraint(item: custom,
            attribute: .Height,
            relatedBy: .Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.NotAnAttribute,
            multiplier: 1.0,
            constant: 50.0)
        
        let width = NSLayoutConstraint(item: custom,
            attribute: .Width,
            relatedBy: .Equal,
            toItem: nil,
            attribute: .NotAnAttribute,
            multiplier: 1.0,
            constant: 200.00)
        
        NSLayoutConstraint.activateConstraints([top, centerH, height, width])
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //load the Interface Builder file
        NSBundle.mainBundle().loadNibNamed("FirstCustomView", owner: self, options: nil)
        //add as subview
        self.addSubview(self.view)
    }
    
    @IBAction func buttonWasPressed(sender: UIButton) {
        self.delegate?.buttonWasPressed(sender)
    }


}
