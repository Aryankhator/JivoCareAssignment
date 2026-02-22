//
//
// TabItem.swift
// JivoCareAssignment
//
// Created by Aryan on 19/02/26
//
        

import Foundation
import UIKit


enum TabItem: CaseIterable {
    case home
    case reports
    case lab
    case bookings
    case profile
}

extension TabItem {

    var title: String {
        switch self {
        case .home: return "Home"
        case .reports: return "Reports"
        case .lab: return "Labs"
        case .bookings: return "Bookings"
        case .profile: return "Profile"
        }
    }

    var normalImage: UIImage? {
        switch self {
        case .home: return UIImage(named: "home")
        case .reports: return UIImage(named: "reports")
        case .lab: return UIImage(named: "lab")
        case .bookings: return UIImage(named: "bookings")
        case .profile: return UIImage(named: "profile")
        }
    }

    var selectedImage: UIImage? {
        switch self {
        case .home: return UIImage(named: "home_selected")
        case .reports: return UIImage(named: "reports_selected")
        case .lab: return UIImage(named: "lab_selected")
        case .bookings: return UIImage(named: "bookings_selected")
        case .profile: return UIImage(named: "profile_selected")
        }
    }
}
