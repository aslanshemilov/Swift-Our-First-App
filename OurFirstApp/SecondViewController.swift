//
//  SecondViewController.swift
//  OurFirstApp
//
//  Created by Joshua Johanan on 2/16/16.
//  Copyright © 2016 Joshua Johanan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate {
    var tableSource: CustomTableSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.edgesForExtendedLayout = .None
        self.title = "Second View"
        
        let secondCustomView = SecondCustomView()
        self.view = secondCustomView
        
        self.tableSource = CustomTableSource(tableView: secondCustomView.tableView)
        secondCustomView.tableView.dataSource = self.tableSource
        secondCustomView.tableView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You did select item " + self.tableSource.getValueAtIndex(indexPath.row))
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
