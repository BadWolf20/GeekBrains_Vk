//
//  AllPeopleTableViewCell.swift
//  vk
//
//  Created by Roman on 08.08.2021.
//

import UIKit

class AllPeopleTableViewCell: UITableViewCell {
    // MARK: - Outlets
    /// Имя человека`
    @IBOutlet private var personNameLabel: UILabel!
    /// Фото человека
    @IBOutlet private var personImageView: UIImageView!
    
    
    // MARK: - Functions
    
    func configurartion(with person: Person){
        personNameLabel.text = person.name
        if person.imageMain != nil{
            personImageView.image = person.imageMain
        }
        else{
            personImageView.image = UIImage(named: "DefaultPerson")
        }
    }
    
}
