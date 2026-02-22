//
//
// BannerCell.swift
// JivoCareAssignment
//
// Created by Aryan on 21/02/26
//


import UIKit

class BannerCell: UICollectionViewCell {
    
    @IBOutlet weak var bannerImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(with model: BannerModel) {
        bannerImage.image = UIImage(named: model.imageName)
    }
    
}
