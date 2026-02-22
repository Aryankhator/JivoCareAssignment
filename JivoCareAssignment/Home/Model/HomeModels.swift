//
//
// HomeModels.swift
// JivoCareAssignment
//
// Created by Aryan on 20/02/26
//

import Foundation


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
    var isExpanded: Bool = false

}

struct HomeFooterModel {
    let version: String
    let titleMessage: String
    let subtitleMessage: String
}
