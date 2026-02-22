//
//
// TopPackagesCell.swift
// JivoCareAssignment
//
// Created by Aryan on 21/02/26
//


import UIKit

class TopPackagesCell: UICollectionViewCell {
    
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var testSummaryLabel: UILabel!
    @IBOutlet weak var testsIncludedLabel: UILabel!
    @IBOutlet weak var reportsLabel: UILabel!
    @IBOutlet weak var fastingLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var annualLabel: UILabel!
    @IBOutlet weak var topRightHeader: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        topRightHeader.roundCorners(radius: 6, corners: [.bottomLeft, .topRight])
        layer.cornerRadius = 5
        layer.borderColor = UIColor(red: 0/255, green: 50/255, blue: 54/255, alpha: 0.3).cgColor
        layer.borderWidth = 0.8
        layer.masksToBounds = false
        testSummaryLabel.textColor = .red
    }
    
    func configure(with model: TopPackageModel) {
        
        genderLabel.text = model.genderText
        titleLabel.text = model.titleText
        testSummaryLabel.attributedText = model.testSummaryAttributedText
        
        testsIncludedLabel.text = model.testsIncludedText
        reportsLabel.text = model.reportText
        fastingLabel.text = model.fastingText
        
        priceLabel.attributedText = model.priceWithOriginalAttributed
        annualLabel.text = model.annualPlanText
    }
}
