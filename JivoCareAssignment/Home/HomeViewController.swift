//
//
// HomeViewController.swift
// JivoCareAssignment
//
// Created by Aryan on 21/02/26
//


import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private func setupCollectionView() {
        
        collectionView.register(UINib(nibName: "SectionHeaderView", bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "SectionHeaderView")
        collectionView.register(UINib(nibName: "SearchCell", bundle: nil), forCellWithReuseIdentifier: "SearchCell")
        collectionView.register(UINib(nibName: "HeroCell", bundle: nil), forCellWithReuseIdentifier: "HeroCell")
        collectionView.register(UINib(nibName: "TitleCell", bundle: nil), forCellWithReuseIdentifier: "TitleCell")
        collectionView.register(UINib(nibName: "QuickActionCell", bundle: nil), forCellWithReuseIdentifier: "QuickActionCell")
        collectionView.register(UINib(nibName: "BannerCell", bundle: nil), forCellWithReuseIdentifier: "BannerCell")
        collectionView.register(UINib(nibName: "PackageCell", bundle: nil), forCellWithReuseIdentifier: "PackageCell")
        collectionView.register(UINib(nibName: "TopPackagesCell", bundle: nil), forCellWithReuseIdentifier: "TopPackagesCell")
        collectionView.register(UINib(nibName: "RoutineCheckCell", bundle: nil), forCellWithReuseIdentifier: "RoutineCheckCell")
        collectionView.register(UINib(nibName: "HolisticWomenCareCell", bundle: nil), forCellWithReuseIdentifier: "HolisticWomenCareCell")
        collectionView.register(UINib(nibName: "ScanServieCell", bundle: nil), forCellWithReuseIdentifier: "ScanServieCell")
        collectionView.register(UINib(nibName: "TestimonialsCell", bundle: nil), forCellWithReuseIdentifier: "TestimonialsCell")
        collectionView.register(UINib(nibName: "FAQCell", bundle: nil), forCellWithReuseIdentifier: "FAQCell")
        collectionView.register(UINib(nibName: "HomeFooterCell", bundle: nil), forCellWithReuseIdentifier: "HomeFooterCell")
        
        collectionView.collectionViewLayout = createCompositionalLayout()
        //        collectionView.contentInsetAdjustmentBehavior = .never
        collectionView.backgroundColor = .clear
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
}

// MARK: - Compositional Layout

extension HomeViewController {
    
    private func createCompositionalLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { [weak self] sectionIndex, _ -> NSCollectionLayoutSection? in
            guard let self = self else { return nil }
            
            let sectionType = self.viewModel.section(at: sectionIndex).type
            
            switch sectionType {
            case .search:
                return self.createSection(
                    itemWidth: .fractionalWidth(1),
                    itemHeight: .absolute(250),
                    interItemSpacing: 0,
                    groupWidth: .fractionalWidth(1),
                    groupHeight: .absolute(250),
                    interGroupSpacing: 0,
                    sectionInsets: NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 23, trailing: 0)
                )
            case .quickActions:
                return self.createSection(
                    itemWidth: .fractionalWidth(1.0/3.0),
                    itemHeight: .estimated(143),
                    interItemSpacing: 15,
                    groupWidth: .fractionalWidth(1),
                    groupHeight: .estimated(143),
                    interGroupSpacing: 8,
                    sectionInsets: NSDirectionalEdgeInsets(top: 0, leading: 16, bottom: 30, trailing: 16)
                )
            case .banner:
                return self.createSection(
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
                return self.createSection(
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
                return self.createSection(
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
                return self.createSection(
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
                return self.createSection(
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
                return self.createSection(
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
                return self.createSection(
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
                return self.createSection(
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
                return self.createSection(
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
                return self.createSection(
                    itemWidth: .fractionalWidth(1),
                    itemHeight: .estimated(100),
                    interItemSpacing: 0,
                    groupWidth: .fractionalWidth(1),
                    groupHeight: .estimated(400),
                    interGroupSpacing: 14,
                    sectionInsets: NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 30, trailing: 16),
                    hasHeader: sectionType == .fAQ,
                )
            }
        }
    }
    
    private func createSection(
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

// MARK: - UICollectionView DataSource

extension HomeViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return viewModel.numberOfSections()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfItems(in: section)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let item = viewModel.item(at: indexPath)
        
        switch item {
            
        case .search:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchCell", for: indexPath) as! SearchCell
            return cell
            
        case .quickAction(let model):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuickActionCell", for: indexPath) as! QuickActionCell
            cell.configure(with: model)
            return cell
            
        case .banner(let model):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BannerCell", for: indexPath) as! BannerCell
            cell.configure(with: model)
            return cell
            
        case .package(let model):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PackageCell", for: indexPath) as! PackageCell
            cell.configure(with: model)
            return cell
            
        case .topPackage(let model):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopPackagesCell", for: indexPath) as! TopPackagesCell
            cell.configure(with: model)
            return cell
        case .routineMenCheckup(let model):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RoutineCheckCell", for: indexPath) as! RoutineCheckCell
            cell.configure(with: model)
            return cell
        case .routineWomenCheckup(let model):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RoutineCheckCell", for: indexPath) as! RoutineCheckCell
            cell.configure(with: model)
            return cell
        case .familyPackage(let model):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BannerCell", for: indexPath) as! BannerCell
            cell.configure(with: model)
            return cell
        case .womenHealthWellness(let model):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopPackagesCell", for: indexPath) as! TopPackagesCell
            cell.configure(with: model)
            return cell
        case .holisticWomenCare(let model):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HolisticWomenCareCell", for: indexPath) as! HolisticWomenCareCell
            cell.configure(with: model)
            return cell
        case .scanServices(let model):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ScanServieCell", for: indexPath) as! ScanServieCell
            cell.configure(with: model)
            return cell
        case .testimonials(let model):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TestimonialsCell", for: indexPath) as! TestimonialsCell
            cell.configure(with: model)
            return cell
            
        case .fAQ(let model):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FAQCell", for: indexPath) as! FAQCell
            cell.configure(with: model)
            return cell
        case .homeFooter(let model):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeFooterCell", for: indexPath) as! HomeFooterCell
            cell.configure(with: model)
            return cell
            
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuickActionCell", for: indexPath) as! QuickActionCell
            cell.configure(with: QuickActionModel(title: "", imageName: "", subtitle: ""))
            return cell
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        viewForSupplementaryElementOfKind kind: String,
                        at indexPath: IndexPath) -> UICollectionReusableView {

        guard kind == UICollectionView.elementKindSectionHeader else {
            fatalError("Unexpected element kind")
        }

        let header = collectionView.dequeueReusableSupplementaryView(
            ofKind: kind,
            withReuseIdentifier: "SectionHeaderView",
            for: indexPath) as! SectionHeaderView

        let section = viewModel.section(at: indexPath.section)
        header.configure(withTitle: section.type.rawValue)

        return header
    }
}

// MARK: - UICollectionView Delegate

extension HomeViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = viewModel.item(at: indexPath)
        switch item {
        case .quickAction(let model):
            print("QuickAction tapped: \(model.title)")
        default:
            break
        }
    }
}
