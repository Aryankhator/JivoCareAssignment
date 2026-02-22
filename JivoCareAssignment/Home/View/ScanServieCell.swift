//
//
// ScanServieCell.swift
// JivoCareAssignment
//
// Created by Aryan on 21/02/26
//
        

import UIKit
import UIKit

class ScanServieCell: UICollectionViewCell {
    
    private let gradientLayer = CAGradientLayer()

    @IBOutlet weak var machineImage: UIImageView!
    @IBOutlet weak var machineName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupGradient()
        gradientLayer.frame = contentView.bounds
        
        contentView.roundCorners(topLeft: 30, topRight: 10, bottomLeft: 10, bottomRight: 10)
    }
    
    private func setupGradient() {
        
        let color1 = UIColor(named: "scanService_1")?.cgColor ?? UIColor.systemBlue.cgColor
        let color2 = UIColor(named: "scanService_2")?.cgColor ?? UIColor.systemGreen.cgColor
        
        gradientLayer.colors = [color1, color2]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        
        contentView.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func configure(with model: ScanServiceModel) {
        machineName.text = model.name
        machineImage.image = UIImage(named: model.imageName)
    }
}
