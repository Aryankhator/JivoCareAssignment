//
//
// QuickActionCell.swift
// JivoCareAssignment
//
// Created by Aryan on 20/02/26
//


import UIKit

class QuickActionCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(with model: QuickActionModel) {
        iconImageView.image = UIImage(named: model.imageName)
        titleLabel.text = model.title
        subtitleLabel.text = model.subtitle
    }
}
