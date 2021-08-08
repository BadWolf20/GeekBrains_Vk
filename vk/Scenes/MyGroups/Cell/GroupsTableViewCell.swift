//
//  GroupsTableViewCell.swift
//  vk
//
//  Created by Roman on 07.08.2021.
//

import UIKit

class GroupsTableViewCell: UITableViewCell {

    @IBOutlet var groupName: UILabel!
    
    @IBOutlet var groupImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
