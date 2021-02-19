//
//  HomeTableViewCell.swift
//  Instagram
//
//  Created by shahzod on 2/19/21.
//  Copyright © 2021 shahzod. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileView: UIImageView!
    
    
    @IBOutlet weak var FullNameLabel: UILabel!
    
    
    @IBOutlet weak var postImageView: UIImageView!
    
    @IBOutlet weak var post2ImageView: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
