//
//  CustomTableSource.swift
//  OurFirstApp
//
//  Created by Joshua Johanan on 2/16/16.
//  Copyright © 2016 Joshua Johanan. All rights reserved.
//

import Foundation
import UIKit

class CustomTableSource: NSObject, UITableViewDataSource {
    var items: [String] = ["Our", "First", "TableView", "Should", "Extend", "Farther", "Down", "The", "View"]
    
    init (tableView: UITableView){
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        cell.textLabel?.text = self.items[indexPath.row]
        
        return cell
    }
    
    func getValueAtIndex(row: Int) -> String{
        return self.items[row]
    }
}
