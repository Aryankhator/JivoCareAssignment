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
        
        collectionView.backgroundColor = .clear
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
    
    // LayouCompositional
    private func createCompositionalLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { [weak self] sectionIndex, _ -> NSCollectionLayoutSection? in
            guard let self = self else { return nil }
            return self.viewModel.section(at: sectionIndex).layout()
        }
    }
}


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


extension HomeViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = viewModel.item(at: indexPath)
        switch item {
        default:
            print("Item tapped")
        }
    }
}
