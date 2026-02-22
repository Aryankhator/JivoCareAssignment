//
//
// CustomTabBarView.swift
// JivoCareAssignment
//
// Created by Aryan on 19/02/26
//


import UIKit

protocol CustomTabBarDelegate: AnyObject {
    func didSelect(tab: TabItem)
}

final class CustomTabBarView: UIView {

    @IBOutlet private weak var homeItem: UIButton!
    @IBOutlet private weak var reportsItem: UIButton!
    @IBOutlet private weak var labItem: UIButton!
    @IBOutlet private weak var bookingsItem: UIButton!
    @IBOutlet private weak var profileItem: UIButton!

    weak var delegate: CustomTabBarDelegate?

    private lazy var tabConfig: [(button: UIButton, tab: TabItem)] = [
        (homeItem, .home),
        (reportsItem, .reports),
        (labItem, .lab),
        (bookingsItem, .bookings),
        (profileItem, .profile)
    ]

    override func awakeFromNib() {
        super.awakeFromNib()
        setupTabs()
        selectTab(.home)
    }

    @IBAction func homeTapped() {
        handleSelection(.home)
    }

    @IBAction func reportsTapped() {
        handleSelection(.reports)
    }

    @IBAction func labTapped() {
        handleSelection(.lab)
    }

    @IBAction func bookingsTapped() {
        handleSelection(.bookings)
    }

    @IBAction func profileTapped() {
        handleSelection(.profile)
    }

    private func setupTabs() {
        tabConfig.forEach { item in
            let button = item.button
            let tab = item.tab

            let normalAttributes: [NSAttributedString.Key: Any] = [
                .font: UIFont.systemFont(ofSize: 10, weight: .bold),
                .foregroundColor: UIColor.gray
            ]

            let selectedAttributes: [NSAttributedString.Key: Any] = [
                .font: UIFont.systemFont(ofSize: 10, weight: .bold),
                .foregroundColor: UIColor.black
            ]

            button.setAttributedTitle(
                NSAttributedString(string: tab.title, attributes: normalAttributes),
                for: .normal
            )

            button.setAttributedTitle(
                NSAttributedString(string: tab.title, attributes: selectedAttributes),
                for: .selected
            )
            button.setImage(tab.normalImage, for: .normal)
            // For changing the image we need image for both state
            button.setImage(tab.selectedImage, for: .selected)

  
            button.titleLabel?.textAlignment = .center
            button.titleLabel?.numberOfLines = 1
            button.contentHorizontalAlignment = .center
        }
    }

    private func handleSelection(_ tab: TabItem) {
        delegate?.didSelect(tab: tab)
        selectTab(tab)
    }

    private func selectTab(_ selectedTab: TabItem) {
        tabConfig.forEach {
            let isSelected = $0.tab == selectedTab
            $0.button.isSelected = isSelected
        }
    }
}
