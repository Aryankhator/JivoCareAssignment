//
//
// HomeSection.swift
// JivoCareAssignment
//
// Created by Aryan on 22/02/26
//


import Foundation
import UIKit

struct HomeSection {
    let type: HomeSectionType
    var items: [HomeItem]
    
    func layout() -> NSCollectionLayoutSection {
        return type.layout()
    }
}

enum HomeSectionType: String {
    case search
    case quickActions
    case banner
    case packages = "Doctor-Curated Health Checkup Packages"
    case topPackages = "Top Booked Health Checkup Packages"
    case routineMenCheckup = "Routine Health Checkup for Men"
    case routineWomenCheckup = "Routine Health Checkup for Women"
    case familyPackage = "Family Care Packages"
    case womenHealthWellness = "Women’s Health & Wellness"
    case holisticWomenCare = "Holistic Women’s Care"
    case scanServices = "X-Ray, CT Scan and MRI"
    case testimonials = "Testimonials"
    case fAQ = "Frequently Asked Questions"
    case homeFooter
}

enum HomeItem {
    case search
    case quickAction(QuickActionModel)
    case banner(BannerModel)
    case package(PackageModel)
    case topPackage(TopPackageModel)
    case routineMenCheckup(RoutineCheckModel)
    case routineWomenCheckup(RoutineCheckModel)
    case familyPackage(BannerModel)
    case womenHealthWellness(TopPackageModel)
    case holisticWomenCare(HolisticWomenCareModel)
    case scanServices(ScanServiceModel)
    case testimonials(TestimonialModal)
    case fAQ(FAQModel)
    case homeFooter(HomeFooterModel)
}
