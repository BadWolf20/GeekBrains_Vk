//
//  CustomButton.swift
//  vk
//
//  Created by Roman on 08.08.2021.
//

import UIKit


class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButton()
    }
    
    
    private func setupButton(){
        backgroundColor = .yellow
        setTitle("Кнопка", for: .normal)
        layer.cornerRadius = 12
        layer.masksToBounds = true
    }
}
