//
//
// searchCell.swift
// JivoCareAssignment
//
// Created by Aryan on 22/02/26
//
        

import UIKit

class SearchCell: UICollectionViewCell {
    private let gradientLayer = CAGradientLayer()

    @IBOutlet weak var searchStack: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupGradient()
//        searchStack.layer.borderColor = UIColor.red.cgColor
//        searchStack.layer.borderWidth = 1
        searchStack.layer.cornerRadius = 8
        searchStack.layer.masksToBounds = true
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        gradientLayer.frame = contentView.bounds
        contentView.roundCorners(topLeft: 0, topRight: 0, bottomLeft: 30, bottomRight: 30)

    }
    
    private func setupGradient() {
        
        let color1 = UIColor(named: "hearder_1")?.cgColor ?? UIColor.systemBlue.cgColor
        let color2 = UIColor(named: "hearder_2")?.cgColor ?? UIColor.systemGreen.cgColor
        
        gradientLayer.colors = [color1, color2]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0) 
        gradientLayer.endPoint   = CGPoint(x: 0.5, y: 1.0)
        
        contentView.layer.insertSublayer(gradientLayer, at: 0)
    }
}
