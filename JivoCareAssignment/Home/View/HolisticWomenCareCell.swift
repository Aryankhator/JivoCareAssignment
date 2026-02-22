//
//
// HolisticWomenCareCell.swift
// JivoCareAssignment
//
// Created by Aryan on 21/02/26
//


import UIKit

class HolisticWomenCareCell: UICollectionViewCell {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var diseasesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        image.layer.cornerRadius = 6
        image.clipsToBounds = true
    }
    
    func configure(with model: HolisticWomenCareModel) {
        diseasesLabel.text = model.diseases
        image.image = UIImage(named: model.imageName)
    }
}
