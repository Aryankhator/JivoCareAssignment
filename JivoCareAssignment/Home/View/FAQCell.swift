//
//
// FAQCell.swift
// JivoCareAssignment
//
// Created by Aryan on 21/02/26
//


import UIKit

import UIKit

class FAQCell: UICollectionViewCell {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var expandButton: UIButton!
    @IBOutlet weak var answerLabel: UILabel!
    //    @IBOutlet weak var answerHeightConstraint: NSLayoutConstraint!
    
    private var isExpanded: Bool = false
    
    @IBAction func expandAction(_ sender: UIButton) {
        toggleAnswer()
    }
    
    
    func configure(with model: FAQModel) {
        questionLabel.text = model.question
        answerLabel.text = model.answer
        answerLabel.isHidden = !isExpanded
        let imageName = isExpanded ? "chevron.up" : "chevron.down"
        expandButton.setImage(UIImage(systemName: imageName), for: .normal)
    }
    
    private func toggleAnswer() {
        isExpanded.toggle()
        answerLabel.isHidden = !isExpanded
        if let collectionView = self.superview as? UICollectionView ??
            self.superview?.superview as? UICollectionView {
            collectionView.collectionViewLayout.invalidateLayout()
        }
        let imageName = isExpanded ? "chevron.up" : "chevron.down"
        expandButton.setImage(UIImage(systemName: imageName), for: .normal)
    }
}
