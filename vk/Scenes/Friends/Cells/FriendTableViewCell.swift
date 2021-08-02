//
//  FriendTableViewCell.swift
//  vk
//
//  Created by Roman on 02.08.2021.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    
    //MARK: Outlets
    @IBOutlet var personImage: UIImageView!
    @IBOutlet var personName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
