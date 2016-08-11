//
//  ViewController.swift
//  TableViewCellsPractice
//
//  Created by Madina Ibrahim on 8/9/16.
//  Copyright © 2016 Madina Ibrahim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var newLabel: UILabel!
    
    var number = " "
    
    override func viewDidLoad() {
        
// segue needs to know where what to through, and you also need a catcher on other view controller
        
        
        super.viewDidLoad()
        
        newLabel.text = self.number

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
         
        // Dispose of any resources that can be recreated.
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
