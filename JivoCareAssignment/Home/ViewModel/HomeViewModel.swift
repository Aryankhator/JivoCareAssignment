//
//
// HomeViewModel.swift
// JivoCareAssignment
//
// Created by Aryan on 20/02/26
//

import Foundation
import UIKit


final class HomeViewModel {
    
    var sections: [HomeSection] = []
    
    init() {
        buildSections()
    }
    
    func numberOfSections() -> Int {
        sections.count
    }
    
    func numberOfItems(in section: Int) -> Int {
        sections[section].items.count
    }
    
    func section(at index: Int) -> HomeSection {
        sections[index]
    }
    
    func item(at indexPath: IndexPath) -> HomeItem {
        sections[indexPath.section].items[indexPath.row]
    }
    
    private func buildSections() {
        
        sections = [
            
            HomeSection(
                type: .search,
                items: [.search]
            ),
            
            HomeSection(
                type: .quickActions,
                items: [
                    .quickAction(.init(title: "Blood Tests", imageName: "bloodTest", subtitle: "subTitle")),
                    .quickAction(.init(title: "X-Rays & Scans", imageName: "xray", subtitle: "subTitle")),
                    .quickAction(.init(title: "Book via WhatsApp", imageName: "via", subtitle: "subTitle"))
                ]
            ),
            
            HomeSection(
                type: .banner,
                items: [
                    .banner(.init(imageName: "banner_1")),
                    .banner(.init(imageName: "banner_1"))
                ]
            ),
            
            HomeSection(
                type: .packages,
                items: [
                    .package(.init(title: "Full Body", imageName: "package_1")),
                    .package(.init(title: "Diabetes", imageName: "package_2")),
                    .package(.init(title: "Hair & Skin", imageName: "package_3")),
                    .package(.init(title: "Vitamins", imageName: "package_4")),
                    .package(.init(title: "Fever", imageName: "package_5")),
                    .package(.init(title: "Thyroid", imageName: "package_6"))
                    
                ]
            ),
            
            HomeSection(
                type: .topPackages,
                items: [
                    .topPackage(.init(id: "1", genderTag: "For Male & Female", title: "Fit India Full Body Checkup with Vitamin screening free HsRP", includedTestsSummary: "Random Blood Sugar, Liver Function Test, Urine Routine, Complete Blood Count... +88 more", totalTests: 93, reportWithinHours: 24, fastingHours: 12, price: 1050, originalPrice: 7600, annualPlanPrice: 950)),
                    .topPackage(.init(id: "1", genderTag: "For Male & Female", title: "Fit India Full Body Checkup with Vitamin screening free HsRP", includedTestsSummary: "Random Blood Sugar, Liver Function Test, Urine Routine, Complete Blood Count... +88 more", totalTests: 93, reportWithinHours: 24, fastingHours: 12, price: 1050, originalPrice: 7600, annualPlanPrice: 950)),
                    .topPackage(.init(id: "1", genderTag: "For Male & Female", title: "Fit India Full Body Checkup with Vitamin screening free HsRP", includedTestsSummary: "Random Blood Sugar, Liver Function Test, Urine Routine, Complete Blood Count... +88 more", totalTests: 93, reportWithinHours: 24, fastingHours: 12, price: 1050, originalPrice: 7600, annualPlanPrice: 950))
                ]
            ),
            HomeSection(
                type: .banner,
                items: [
                    .banner(.init(imageName: "banner_3"))
                ]
            ),
            HomeSection(
                type: .routineMenCheckup,
                items: [
                    .routineMenCheckup(.init(imageName: "menUnder15", ageText: "Under 15 yrs", background: "checkupBg1")),
                    .routineMenCheckup(.init(imageName: "menUnder30", ageText: "15-30 yrs", background: "checkupBg2")),
                    .routineMenCheckup(.init(imageName: "menUnder45", ageText: "30-45 yrs", background: "checkupBg3")),
                    .routineMenCheckup(.init(imageName: "menUnder60", ageText: "45-60 yrs", background: "checkupBg4")),
                    .routineMenCheckup(.init(imageName: "menAbove60", ageText: "Above 60 yrs", background: "checkupBg5")),
                ]
            ),
            HomeSection(
                type: .routineWomenCheckup,
                items: [
                    .routineMenCheckup(.init(imageName: "womenUnder15", ageText: "Under 15 yrs", background: "checkupBg1")),
                    .routineMenCheckup(.init(imageName: "womenUnder30", ageText: "15-30 yrs", background: "checkupBg2")),
                    .routineMenCheckup(.init(imageName: "womenUnder45", ageText: "30-45 yrs", background: "checkupBg3")),
                    .routineMenCheckup(.init(imageName: "womenUnder60", ageText: "45-60 yrs", background: "checkupBg4")),
                    .routineMenCheckup(.init(imageName: "womenAbove60", ageText: "Above 60 yrs", background: "checkupBg5")),
                ]
            ),
            HomeSection(
                type: .familyPackage,
                items: [
                    .familyPackage(.init(imageName: "familyPackage")),
                    .familyPackage(.init(imageName: "familyPackage")),
                ]
            ),
            HomeSection(
                type: .womenHealthWellness,
                items: [
                    .topPackage(.init(id: "1", genderTag: "For Male & Female", title: "Fit India Full Body Checkup with Vitamin screening free HsRP", includedTestsSummary: "Random Blood Sugar, Liver Function Test, Urine Routine, Complete Blood Count... +88 more", totalTests: 93, reportWithinHours: 24, fastingHours: 12, price: 1050, originalPrice: 7600, annualPlanPrice: 950)),
                    .topPackage(.init(id: "1", genderTag: "For Male & Female", title: "Fit India Full Body Checkup with Vitamin screening free HsRP", includedTestsSummary: "Random Blood Sugar, Liver Function Test, Urine Routine, Complete Blood Count... +88 more", totalTests: 93, reportWithinHours: 24, fastingHours: 12, price: 1050, originalPrice: 7600, annualPlanPrice: 950)),
                    .topPackage(.init(id: "1", genderTag: "For Male & Female", title: "Fit India Full Body Checkup with Vitamin screening free HsRP", includedTestsSummary: "Random Blood Sugar, Liver Function Test, Urine Routine, Complete Blood Count... +88 more", totalTests: 93, reportWithinHours: 24, fastingHours: 12, price: 1050, originalPrice: 7600, annualPlanPrice: 950))
                ]
            ),
            HomeSection(
                type: .holisticWomenCare,
                items: [
                    .holisticWomenCare(.init(imageName: "holistic_1", diseases: "PCOS")),
                    .holisticWomenCare(.init(imageName: "holistic_2", diseases: "Fertility")),
                    .holisticWomenCare(.init(imageName: "holistic_3", diseases: "Bad Obstric History")),
                    .holisticWomenCare(.init(imageName: "holistic_4", diseases: "Pregnancy Test")),
                    .holisticWomenCare(.init(imageName: "holistic_5", diseases: "Pregnancy Packages")),
                    .holisticWomenCare(.init(imageName: "holistic_6", diseases: "Pregnancy Ultrasound")),
                    .holisticWomenCare(.init(imageName: "holistic_7", diseases: "Postpartum Care")),
                    .holisticWomenCare(.init(imageName: "holistic_8", diseases: "Menopause")),
                ]
            ),
            HomeSection(
                type: .scanServices,
                items: [
                    .scanServices(.init(name: "CT Scan", imageName: "ctScan")),
                    .scanServices(.init(name: "ECG", imageName: "ecg")),
                    .scanServices(.init(name: "X-Ray", imageName: "xray")),
                    .scanServices(.init(name: "Ultrasound", imageName: "ultrasound")),
                    .scanServices(.init(name: "MRI", imageName: "mri")),
                    .scanServices(.init(name: "X-Ray", imageName: "xray")),
                ]
            ),
            HomeSection(
                type: .testimonials,
                items: [
                    .testimonials(.init(profileImage: "testimonial_profile", name: "Aryan", profession: "iOS Developer", review: "“I really enjoyed working with you guys, you guys are very communicative and quick to do the job. I really can’t wait to work with you again. I really enjoyed working with you guys.”")),
                    .testimonials(.init(profileImage: "testimonial_profile", name: "Aryan", profession: "iOS Developer", review: "“I really enjoyed working with you guys, you guys are very communicative and quick to do the job. I really can’t wait to work with you again. I really enjoyed working with you guys.”")),
                ]
            ),
            HomeSection(
                type: .fAQ,
                items: [
                    .fAQ(.init(question: "How Home samples collection works?", answer: "Our process is simple and hassle-free. Once you complete your booking by selecting the required tests and your preferred collection time, a highly trained phlebotomist will visit your home to collect the sample while following strict safety standards. The collected sample is then securely delivered to our partner labs for testing in compliance with safety guidelines. After the tests are completed, your reports are shared directly to your registered email, along with the option to avail a free doctor consultation to help you understand your results better.")),
                    .fAQ(.init(question: "How Home samples collection works?", answer: "Our process is simple and hassle-free. Once you complete your booking by selecting the required tests and your preferred collection time, a highly trained phlebotomist will visit your home to collect the sample while following strict safety standards. The collected sample is then securely delivered to our partner labs for testing in compliance with safety guidelines. After the tests are completed, your reports are shared directly to your registered email, along with the option to avail a free doctor consultation to help you understand your results better.")),
                    .fAQ(.init(question: "How Home samples collection works?", answer: "Our process is simple and hassle-free. Once you complete your booking by selecting the required tests and your preferred collection time, a highly trained phlebotomist will visit your home to collect the sample while following strict safety standards. The collected sample is then securely delivered to our partner labs for testing in compliance with safety guidelines. After the tests are completed, your reports are shared directly to your registered email, along with the option to avail a free doctor consultation to help you understand your results better.")),
                ]
            ),
            HomeSection(
                type: .homeFooter,
                items: [
                    .homeFooter(.init(version: "PROD - v1.0.0", titleMessage: "Live\nHealthy", subtitleMessage: "Crafted with ❤️ in India"))
                ]
            ),
        ]
    }
}

