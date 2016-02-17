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
