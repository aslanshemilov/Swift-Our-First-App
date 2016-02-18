//
//  SecondCustomView.swift
//  OurFirstApp
//
//  Created by Joshua Johanan on 2/16/16.
//  Copyright © 2016 Joshua Johanan. All rights reserved.
//

import UIKit

class SecondCustomView: UIView {
    @IBOutlet var view: UIView!
    @IBOutlet var tableView: UITableView!
    @IBOutlet var label: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //load the Interface Builder file
        NSBundle.mainBundle().loadNibNamed("SecondCustomView", owner: self, options: nil)
        //set bounds correctly
        self.bounds = self.view.bounds
        //add as subview
        self.addSubview(self.view)
        self.tableView = UITableView()
        self.view.addSubview(self.tableView)
        self.layoutTable()
    }
    
    func layoutTable() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        let top = NSLayoutConstraint(item: tableView,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: label,
            attribute: .Bottom,
            multiplier: 1.0,
            constant: 8.0)
        
        let left = NSLayoutConstraint(item: tableView,
            attribute: .Leading,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Leading,
            multiplier: 1.0,
            constant: 0.0)
        
        let right = NSLayoutConstraint(item: tableView,
            attribute: .Trailing,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Trailing,
            multiplier: 1.0,
            constant: 0.0)
        
        let bottom = NSLayoutConstraint(item: tableView,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: view,
            attribute: .Bottom,
            multiplier: 1.0,
            constant: 0.0)
        
        
        NSLayoutConstraint.activateConstraints([top, left, right, bottom])
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //load the Interface Builder file
        NSBundle.mainBundle().loadNibNamed("SecondCustomView", owner: self, options: nil)
        //add as subview
        self.addSubview(self.view)
    }

}
