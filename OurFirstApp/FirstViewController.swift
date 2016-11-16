//
//  FirstViewController.swift
//  OurFirstApp
//
//  Created by Joshua Johanan on 2/16/16.
//  Copyright © 2016 Joshua Johanan. All rights reserved.
//

import UIKit
import Foundation

class FirstViewController: UIViewController, FirstCustomViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.edgesForExtendedLayout = .None
        self.title = "First View"
        self.view = FirstCustomView()
        (self.view as! FirstCustomView).delegate = self
        
        //load google
        let getIt :HTTPGetIt = HTTPGetIt()
        getIt.GetMeGoogle{html in
            (self.view as! FirstCustomView).webView.loadHTMLString(html!, baseURL: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func buttonWasPressed(sender: UIButton)
    {
        self.navigationController?.pushViewController(SecondViewController(), animated: true)
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
