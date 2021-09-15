//
//  CustomRoundImage.swift
//  vk
//
//  Created by Roman on 09.08.2021.
//

import UIKit

class   CustomRoundImage: CustomImageView{
    
    @IBInspectable var shadowColor: UIColor = .black{
        didSet{
            updateShadow()
        }
    }
        
        
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.shadowRadius = 10
        layer.shadowOpacity = 1
    }
    
    private func updateShadow(){
        layer.shadowColor = shadowColor.cgColor
    }
}
