//
//  CustomCell.swift
//  Slide Up with @
//
//  Created by Hasya.Panchasara on 09/11/16.
//  Copyright © 2016 Hasya Panchasara. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet var imgUser : UIImageView!
    @IBOutlet var lblName : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}