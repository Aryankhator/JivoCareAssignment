//
//
// HomeFooterCell.swift
// JivoCareAssignment
//
// Created by Aryan on 22/02/26
//
        

import UIKit

class HomeFooterCell: UICollectionViewCell {

    @IBOutlet weak var versionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(with model: HomeFooterModel) {
        versionLabel.text = model.version
        titleLabel.text = model.titleMessage
        subtitleLabel.text = model.subtitleMessage
    }
}
