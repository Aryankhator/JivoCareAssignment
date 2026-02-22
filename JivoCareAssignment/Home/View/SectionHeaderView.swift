//
//
// SectionHeaderView.swift
// JivoCareAssignment
//
// Created by Aryan on 22/02/26
//
        

import UIKit

class SectionHeaderView: UICollectionReusableView {
    
@IBOutlet weak var sectionTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(withTitle title: String) {
        sectionTitleLabel.text = title
    }
}
