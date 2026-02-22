//
//
// HomeModels.swift
// JivoCareAssignment
//
// Created by Aryan on 20/02/26
//
        

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

struct HomeSection {
    let type: HomeSectionType
    let items: [HomeItem]
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


struct QuickActionModel {
    let title: String
    let imageName: String
    let subtitle: String
}

struct BannerModel {
    let imageName: String
}

struct PackageModel {
    let title: String
    let imageName: String
}

struct RoutineCheckModel {
    let imageName: String
    let ageText: String
    let background: String
}

struct HolisticWomenCareModel {
    let imageName: String
    let diseases: String
}

struct ScanServiceModel {
    let name: String
    let imageName: String
}

struct TestimonialModal {
    let profileImage: String
    let name: String
    let profession: String
    let review: String
}

struct FAQModel {
    let question: String
    let answer: String
}

struct HomeFooterModel {
    let version: String
    let titleMessage: String
    let subtitleMessage: String
}
