//
//
// TestimonialsCell.swift
// JivoCareAssignment
//
// Created by Aryan on 21/02/26
//


import UIKit

class TestimonialsCell: UICollectionViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var professionLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCardStyle()
    }
    
    private func setupCardStyle() {
        contentView.backgroundColor = UIColor.white
        contentView.layer.cornerRadius = 4
        contentView.layer.masksToBounds = true
        contentView.layer.borderColor = UIColor(red: 0, green: 50/255, blue: 54/255, alpha: 0.1).cgColor
        contentView.layer.borderWidth = 1
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.04
        layer.shadowOffset = CGSize(width: 1, height: 1.5)
        layer.shadowRadius = 4
        layer.masksToBounds = false
    }
    
    func configure(with testimonial: TestimonialModal) {
        profileImage.image = UIImage(named: testimonial.profileImage) 
        nameLabel.text = testimonial.name
        professionLabel.text = testimonial.profession
        reviewLabel.text = testimonial.review
    }
    
}
