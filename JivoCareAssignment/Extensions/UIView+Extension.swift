//
//
// UIView+Extension.swift
// JivoCareAssignment
//
// Created by Aryan on 21/02/26
//
        

import Foundation
import UIKit

extension UIView {
    
    func roundCorners(radius: CGFloat, corners: UIRectCorner) {
        let path = UIBezierPath(
            roundedRect: bounds,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
    
    func roundCorners(topLeft: CGFloat,
                      topRight: CGFloat,
                      bottomLeft: CGFloat,
                      bottomRight: CGFloat) {
        
        let path = UIBezierPath()
        let bounds = self.bounds
        
        path.move(to: CGPoint(x: bounds.minX + topLeft, y: bounds.minY))
        
   
        path.addLine(to: CGPoint(x: bounds.maxX - topRight, y: bounds.minY))
        path.addArc(withCenter: CGPoint(x: bounds.maxX - topRight,
                                        y: bounds.minY + topRight),
                    radius: topRight,
                    startAngle: -.pi/2,
                    endAngle: 0,
                    clockwise: true)
        
   
        path.addLine(to: CGPoint(x: bounds.maxX,
                                 y: bounds.maxY - bottomRight))
        path.addArc(withCenter: CGPoint(x: bounds.maxX - bottomRight,
                                        y: bounds.maxY - bottomRight),
                    radius: bottomRight,
                    startAngle: 0,
                    endAngle: .pi/2,
                    clockwise: true)
        

        path.addLine(to: CGPoint(x: bounds.minX + bottomLeft,
                                 y: bounds.maxY))
        path.addArc(withCenter: CGPoint(x: bounds.minX + bottomLeft,
                                        y: bounds.maxY - bottomLeft),
                    radius: bottomLeft,
                    startAngle: .pi/2,
                    endAngle: .pi,
                    clockwise: true)
        
        path.addLine(to: CGPoint(x: bounds.minX,
                                 y: bounds.minY + topLeft))
        path.addArc(withCenter: CGPoint(x: bounds.minX + topLeft,
                                        y: bounds.minY + topLeft),
                    radius: topLeft,
                    startAngle: .pi,
                    endAngle: -.pi/2,
                    clockwise: true)
        
        path.close()
        
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
