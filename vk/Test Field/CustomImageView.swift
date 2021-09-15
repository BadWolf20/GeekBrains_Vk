//
//  CustomImageView.swift
//  vk
//
//  Created by Roman on 09.08.2021.
//

import UIKit

@IBDesignable
class CustomImageView: UIImageView {

    @IBInspectable var radius: CGFloat = 10{
        didSet{
            setupButton()
            setNeedsDisplay()
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }
    
    
    private func setupButton(){
        //backgroundColor = .yellow
        //self.frame = CGRect.init(x: self.frame.origin.x, y: self.frame.origin.y, width: 300, height: <#T##Double#>)
        let height = bounds.height
        layer.cornerRadius = height/2
        layer.masksToBounds = true
        

    }
}
