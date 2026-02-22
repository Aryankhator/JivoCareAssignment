//
//
// RoutineCheckCell.swift
// JivoCareAssignment
//
// Created by Aryan on 21/02/26
//


import UIKit

class RoutineCheckCell: UICollectionViewCell {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var ageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImageView.layer.cornerRadius = profileImageView.bounds.width / 2
        profileImageView.clipsToBounds = true
    }

    
    func configure(with model: RoutineCheckModel) {
        profileImageView.backgroundColor = UIColor(named: model.background)
        profileImageView.image = UIImage(named: model.imageName)
        ageLabel.text = "\(model.ageText)"
    }
}
