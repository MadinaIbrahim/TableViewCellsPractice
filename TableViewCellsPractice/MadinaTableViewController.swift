//
//  TableViewController.swift
//  TableViewCellsPractice
//
//  Created by Madina Ibrahim on 8/9/16.
//  Copyright © 2016 Madina Ibrahim. All rights reserved.
//

import UIKit

class MadinaTableViewController: UITableViewController {
    
    var numbers : [Int] = []  ///initialised, created property

    override func viewDidLoad() {
        super.viewDidLoad()

        
        for numberInt in 1...100 {
            numbers.append(numberInt)
            
        }
        numbers.append(101)
    print(numbers)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }//Delete if you have only one section
    

   
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       return numbers.count  ////now it knows how many cells we will populate
  }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("basicCell", forIndexPath: indexPath)
    
        
        let currentNumber = numbers[indexPath.row]
        cell.textLabel?.text = String(currentNumber)


        // Configure the cell...

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /* */
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using
        ///step 1 destination
     let destination = segue.destinationViewController as!
        ViewController  // where VC is indicating a  name of my receiving VC which is of type class UIViewController( for example if named VC AminViewController, destination would be cast as that var destination = segue.destinationViewController as! AminViewController
        
        
        
    var unwrappedText = ""
        ///step 2 object: we paassing the number. Make sure to not to name a parameter and the var the same name
        /// casted sender (parameter) as a TableviewCell
        
        let senderCell = sender as! UITableViewCell // "as" means we are casting something/behave like me...so sender behave like UItableViewCell and capturing it in senderCell variable
        
        //UITableViewCell(sender) sender is now a UItableViewCell
        
//        var indexPath = tableView.indexPathForSelectedRow
        
        //var whatIsYourText = senderCell.textLabel?.text
        
        if let whatIsYourText = senderCell.textLabel?.text {
        //if whatIsYourText != nil {
            print("not nil")
            unwrappedText = whatIsYourText
            print(whatIsYourText)
        }
        
        destination.number = unwrappedText // catcher is being given or receiving the content of the tapped cell's (sender) information (so unwrappedText with cell's information is the thrower)
    
        
// let senderCell = tableView.cellForRowAtIndexPath(<#T##indexPath: NSIndexPath##NSIndexPath#>)
        
        // Pass the selected object to the new view controller.
        //get means YOU HAVE TO CAST THE DESTINATION VIEW CONTROLLER TO YOUR CLASS VIEW CONTROLLER. you can't make changes on destination view controller because this is property of segue. like array and count. converting:() vs. casting : uses as!
    }
    

}
