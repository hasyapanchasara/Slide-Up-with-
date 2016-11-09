//
//  ViewController.swift
//  Slide Up with @
//
//  Created by Hasya.Panchasara on 09/11/16.
//  Copyright © 2016 Hasya Panchasara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var txtSearch : UITextField!
    @IBOutlet var tblUserData : UITableView!
    
    var myArrayOfDict: NSMutableArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myArrayOfDict = [["UserName": "Hasya", "UserID": "1", "UserImage": "1.png"],["UserName": "Demo", "UserID": "2", "UserImage": "2.png"],["UserName": "Hasya & Hasya", "UserID": "3", "UserImage": "3.png"],["UserName": "Demo User", "UserID": "4", "UserImage": "4.png"]]
        
        tblUserData.layer.borderColor = UIColor.blueColor().CGColor
        tblUserData.layer.borderWidth = 1.0
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return myArrayOfDict.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        
        let cell : CustomCell! = tableView.dequeueReusableCellWithIdentifier("CustomCell", forIndexPath: indexPath)  as! CustomCell
        
        cell.imgUser.layer.cornerRadius = cell.imgUser.frame.size.height/2
        
        let strImageName : String = (myArrayOfDict.objectAtIndex(indexPath.row).valueForKey("UserImage") as? String)!
        
        cell.imgUser.image = UIImage(named: (strImageName))
        
        cell.lblName.text = myArrayOfDict.objectAtIndex(indexPath.row).valueForKey("UserName") as? String
        
        
        return cell
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        
        
        let str : String = (myArrayOfDict.objectAtIndex(indexPath.row).valueForKey("UserName") as? String)!
        
        txtSearch.text = txtSearch.text! + str
        
        UIView.animateWithDuration(0.5) { () -> Void in
            
            var frameOftblUserData : CGRect = self.tblUserData.frame
            frameOftblUserData.origin.y = 264
            frameOftblUserData.size.height = 0
            self.tblUserData.frame = frameOftblUserData
            
        }
        
        
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        print(string)
        
        if string.hasPrefix("@")
        {
            print("YES")
            
            UIView.animateWithDuration(0.5) { () -> Void in
                
                var frameOftblUserData : CGRect = self.tblUserData.frame
                frameOftblUserData.origin.y = 132
                frameOftblUserData.size.height = 132
                self.tblUserData.frame = frameOftblUserData
                
            }
            
        }
        else
        {
            print("NO")
            
            UIView.animateWithDuration(0.5) { () -> Void in
                
                var frameOftblUserData : CGRect = self.tblUserData.frame
                frameOftblUserData.origin.y = 264
                frameOftblUserData.size.height = 0
                self.tblUserData.frame = frameOftblUserData
                
            }
            
        }
        
        return true;
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

