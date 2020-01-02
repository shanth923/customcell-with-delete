//
//  CustomTableViewCell3.swift
//  TableView1
//
//  Created by R Shantha Kumar on 12/27/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class CustomTableViewCell3: UITableViewCell {
   
    
    @IBOutlet weak var hollyWoodImageView: UIImageView!
    
    @IBOutlet weak var nameLAbel3: UILabel!
    @IBOutlet weak var ageLabel3: UILabel!
    
    
    @IBOutlet weak var industryLabel3: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
