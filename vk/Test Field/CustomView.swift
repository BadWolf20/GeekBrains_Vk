//
//  CustomView.swift
//  vk
//
//  Created by Roman on 08.08.2021.
//

import UIKit

@IBDesignable
class CustomView: UIView {
    
    @IBInspectable var isStarFill: Bool = false{
        didSet{
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var starColor: UIColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        guard let contex = UIGraphicsGetCurrentContext() else {return}
        contex.setStrokeColor(starColor.cgColor)
        contex.setFillColor(starColor.cgColor)
        starPath.stroke()


        if isStarFill{
            starPath.fill()
        }
    }
    
    private let starPath: UIBezierPath = {
        let starPath = UIBezierPath()
        starPath.move(to: CGPoint(x: 40, y: 20))
        starPath.addLine(to: CGPoint(x: 45, y: 40))
        starPath.addLine(to: CGPoint(x: 65, y: 40))
        starPath.addLine(to: CGPoint(x: 50, y: 50))
        starPath.addLine(to: CGPoint(x: 60, y: 70))
        starPath.addLine(to: CGPoint(x: 40, y: 55))
        starPath.addLine(to: CGPoint(x: 20, y: 70))
        starPath.addLine(to: CGPoint(x: 30, y: 50))
        starPath.addLine(to: CGPoint(x: 15, y: 40))
        starPath.addLine(to: CGPoint(x: 35, y: 40))
        starPath.close()
        return starPath
    }()
}
