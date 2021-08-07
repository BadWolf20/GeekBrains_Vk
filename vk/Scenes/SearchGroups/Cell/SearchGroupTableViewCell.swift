//
//  SearchGroupTableViewCell.swift
//  vk
//
//  Created by Roman on 08.08.2021.
//

import UIKit

class SearchGroupTableViewCell: UITableViewCell {
    
    
    //MARK: - Outlets
    @IBOutlet var groupImage: UIImageView!
    
    @IBOutlet var GroupName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
