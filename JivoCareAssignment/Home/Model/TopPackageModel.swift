//
//
// TopPackageModel.swift
// JivoCareAssignment
//
// Created by Aryan on 21/02/26
//

import UIKit


struct TopPackageModel {
    let id: String
    let genderTag: String
    let title: String
    let includedTestsSummary: String
    let totalTests: Int
    let reportWithinHours: Int
    let fastingHours: Int
    let price: Double
    let originalPrice: Double
    let annualPlanPrice: Double
}


extension TopPackageModel {
    
    var genderText: String {
        genderTag
    }
    
    var titleText: String {
        title
    }
    
    var testSummaryText: String {
        "Test included: \(includedTestsSummary)"
    }
    
    var testSummaryAttributedText: NSAttributedString {
        let fullText = "Test included: \(includedTestsSummary)"
        let attributed = NSMutableAttributedString(string: fullText,
                                                   attributes: [
                                                       .font: UIFont.systemFont(ofSize: 8),
                                                       .foregroundColor: UIColor.black
                                                   ])
        
       
        if let range = fullText.range(of: "Test included:") {
            let nsRange = NSRange(range, in: fullText)
            attributed.addAttribute(.font,
                                    value: UIFont.systemFont(ofSize: 8, weight: .medium),
                                    range: nsRange)
        }
        
        if let plusRange = fullText.range(of: "+"),
           let moreRange = fullText.range(of: "more", options: .backwards),
           plusRange.lowerBound < moreRange.upperBound {
            
            let underlineRange = NSRange(plusRange.lowerBound..<moreRange.upperBound,
                                         in: fullText)
            
            attributed.addAttribute(.underlineStyle,
                                    value: NSUnderlineStyle.single.rawValue,
                                    range: underlineRange)
        }
        
        return attributed
    }
    
    var testsIncludedText: String {
        "Tests Included\n\(totalTests) Test"
    }
    
    var reportText: String {
        "Reports within\n\(reportWithinHours) Hours"
    }
    
    var fastingText: String {
        "Fasting Required\n\(fastingHours) Hours"
    }
    
    var priceText: String {
        "₹ \(Int(price))"
    }
    
    var priceWithOriginalAttributed: NSAttributedString {
        let finalString = NSMutableAttributedString(
            string: "₹ \(Int(price))  ",
            attributes: [
                .foregroundColor: UIColor.black,
                .font: UIFont.systemFont(ofSize: 12, weight: .semibold)
            ]
        )
        
        let original = NSAttributedString(
            string: "₹ \(Int(originalPrice))",
            attributes: [
                .strikethroughStyle: NSUnderlineStyle.single.rawValue,
                .foregroundColor: UIColor.red,
                .font: UIFont.systemFont(ofSize: 10, weight: .semibold)
            ]
        )
        
        finalString.append(original)
        return finalString
    }
    
    var annualPlanText: String {
        "Or Pay ₹ \(Int(annualPlanPrice)) with Annual plan."
    }
}
