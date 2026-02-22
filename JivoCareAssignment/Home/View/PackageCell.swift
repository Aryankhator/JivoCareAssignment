//
//
// PackageCell.swift
// JivoCareAssignment
//
// Created by Aryan on 21/02/26
//


import UIKit

class PackageCell: UICollectionViewCell {
    
    @IBOutlet weak var packageImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(with model: PackageModel) {
        packageImage.image = UIImage(named: model.imageName)
    }
    
}
