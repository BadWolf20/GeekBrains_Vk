//
//  ShadowView.swift
//  vk
//
//  Created by Roman on 08.08.2021.
//

import UIKit


@IBDesignable
class ShadowView: UIView {
    
   
    
    @IBInspectable var shadowColor: UIColor = .black{
        didSet{
            updateShadow()
        }
    }
        
        
    override func awakeFromNib() {
        
        super.awakeFromNib()
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.shadowRadius = 7
        layer.shadowOpacity = 1
    }
    
    private func updateShadow(){
        layer.shadowColor = shadowColor.cgColor
        print(self.frame.origin.x)
        
    
    }
}
