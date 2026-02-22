//
//
// CollectionViewLayout.swift
// JivoCareAssignment
//
// Created by Aryan on 22/02/26
//
        

import Foundation
import UIKit


enum LayoutFactory {

    static func createSection(
        itemWidth: NSCollectionLayoutDimension,
        itemHeight: NSCollectionLayoutDimension,
        interItemSpacing: CGFloat,
        groupWidth: NSCollectionLayoutDimension,
        groupHeight: NSCollectionLayoutDimension,
        interGroupSpacing: CGFloat,
        sectionInsets: NSDirectionalEdgeInsets,
        scrollBehavior: UICollectionLayoutSectionOrthogonalScrollingBehavior = .none,
        hasHeader: Bool = false,
    ) -> NSCollectionLayoutSection {
        
        let itemSize = NSCollectionLayoutSize(widthDimension: itemWidth, heightDimension: itemHeight)
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: groupWidth, heightDimension: groupHeight)
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.interItemSpacing = .fixed(interItemSpacing)
        
        let section = NSCollectionLayoutSection(group: group)
        section.interGroupSpacing = interGroupSpacing
        section.contentInsets = sectionInsets
        section.orthogonalScrollingBehavior = scrollBehavior
        if hasHeader {
            
            let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                    heightDimension: .estimated(24))
            let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                layoutSize: headerSize,
                elementKind: UICollectionView.elementKindSectionHeader,
                alignment: .topLeading
            )
            section.boundarySupplementaryItems = [sectionHeader]
        }
        return section
    }
}

extension HomeSectionType {

    func layout() -> NSCollectionLayoutSection {

        switch self {
        case .search:
            return LayoutFactory.createSection(
                itemWidth: .fractionalWidth(1),
                itemHeight: .absolute(250),
                interItemSpacing: 0,
                groupWidth: .fractionalWidth(1),
                groupHeight: .absolute(250),
                interGroupSpacing: 0,
                sectionInsets: NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 23, trailing: 0)
            )
        case .quickActions:
            return LayoutFactory.createSection(
                itemWidth: .fractionalWidth(1.0/3.0),
                itemHeight: .estimated(143),
                interItemSpacing: 15,
                groupWidth: .fractionalWidth(1),
                groupHeight: .estimated(143),
                interGroupSpacing: 8,
                sectionInsets: NSDirectionalEdgeInsets(top: 0, leading: 16, bottom: 30, trailing: 16)
            )
        case .banner:
            return LayoutFactory.createSection(
                itemWidth: .fractionalWidth(1),
                itemHeight: .absolute(162),
                interItemSpacing: 12,
                groupWidth: .fractionalWidth(0.95),
                groupHeight: .absolute(162),
                interGroupSpacing: 8,
                sectionInsets: NSDirectionalEdgeInsets(top: 0, leading: 16, bottom: 30, trailing: 16),
                scrollBehavior: .groupPagingCentered
            )
        case .packages:
            return LayoutFactory.createSection(
                itemWidth: .fractionalWidth(1.0/3.0),
                itemHeight: .absolute(128),
                interItemSpacing: 8,
                groupWidth: .fractionalWidth(1),
                groupHeight: .absolute(128),
                interGroupSpacing: 8,
                sectionInsets: NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 30, trailing: 16),
                hasHeader: true
            )
        case .topPackages, .womenHealthWellness:
            return LayoutFactory.createSection(
                itemWidth: .absolute(243),
                itemHeight: .absolute(200),
                interItemSpacing: 10,
                groupWidth: .absolute(243),
                groupHeight: .absolute(200),
                interGroupSpacing: 10,
                sectionInsets: NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 30, trailing: 16),
                scrollBehavior: .continuous,
                hasHeader: true,
            )
        case .routineMenCheckup:
            return LayoutFactory.createSection(
                itemWidth: .absolute(68),
                itemHeight: .absolute(82),
                interItemSpacing: 8,
                groupWidth: .absolute(68),
                groupHeight: .absolute(82),
                interGroupSpacing: 8,
                sectionInsets: NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 30, trailing: 16),
                scrollBehavior: .continuous,
                hasHeader: true,
            )
        case .routineWomenCheckup:
            return LayoutFactory.createSection(
                itemWidth: .absolute(68),
                itemHeight: .absolute(82),
                interItemSpacing: 8,
                groupWidth: .absolute(68),
                groupHeight: .absolute(82),
                interGroupSpacing: 8,
                sectionInsets: NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 30, trailing: 16),
                scrollBehavior: .continuous,
                hasHeader: true,
            )
        case .familyPackage:
            return LayoutFactory.createSection(
                itemWidth: .absolute(340),
                itemHeight: .absolute(163),
                interItemSpacing: 12,
                groupWidth: .absolute(340),
                groupHeight: .absolute(163),
                interGroupSpacing: 8,
                sectionInsets: NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 30, trailing: 16),
                scrollBehavior: .continuous,
                hasHeader: true,
            )
        case .holisticWomenCare:
            return LayoutFactory.createSection(
                itemWidth: .fractionalWidth(1.0 / 4.0),
                itemHeight: .estimated(108),
                interItemSpacing: 20,
                groupWidth: .fractionalWidth(1.0),
                groupHeight: .estimated(108),
                interGroupSpacing: 15,
                sectionInsets: NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 30, trailing: 16),
                scrollBehavior: .none,
                hasHeader: true,
            )
            
        case .scanServices:
            return LayoutFactory.createSection(
                itemWidth: .fractionalWidth(1.0 / 3.0),
                itemHeight: .estimated(112),
                interItemSpacing: 15,
                groupWidth: .fractionalWidth(1.0),
                groupHeight: .estimated(112),
                interGroupSpacing: 15,
                sectionInsets: NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 30, trailing: 16),
                scrollBehavior: .none,
                hasHeader: true,
            )
        case .testimonials:
            return LayoutFactory.createSection(
                itemWidth: .absolute(228),
                itemHeight: .absolute(132),
                interItemSpacing: 10,
                groupWidth: .absolute(228),
                groupHeight: .absolute(132),
                interGroupSpacing: 10,
                sectionInsets: NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 45, trailing: 16),
                scrollBehavior: .continuous,
                hasHeader: true,
            )
            
        case .fAQ, .homeFooter:
            return LayoutFactory.createSection(
                itemWidth: .fractionalWidth(1),
                itemHeight: .estimated(100),
                interItemSpacing: 0,
                groupWidth: .fractionalWidth(1),
                groupHeight: .estimated(400),
                interGroupSpacing: 14,
                sectionInsets: NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 30, trailing: 16),
                hasHeader: self == .fAQ
            )
        }
    }
}
