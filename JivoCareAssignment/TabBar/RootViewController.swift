//
//
// MainTabBarController.swift
// JivoCareAssignment
//
// Created by Aryan on 19/02/26
//


import UIKit


final class RootViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var tabBarView: CustomTabBarView!
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    private var currentVC: UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchTo(tab: .home)
        tabBarView.delegate = self
    }

    private func switchTo(tab: TabItem) {
        currentVC?.removeFromParent()
        currentVC?.view.removeFromSuperview()
        
        let vc: UIViewController
        switch tab {
        case .home:
            vc = HomeViewController(nibName: "HomeViewController", bundle: nil)
        case .reports:
            vc = UIViewController()
            vc.view.backgroundColor = .yellow
        case .lab:
            vc = UIViewController()
            vc.view.backgroundColor = .green
        case .bookings:
            vc = UIViewController()
            vc.view.backgroundColor = .blue
        case .profile:
            vc = UIViewController()
            vc.view.backgroundColor = .red
        }
        
        addChild(vc)
        vc.view.frame = containerView.bounds
        containerView.addSubview(vc.view)
        vc.didMove(toParent: self)
        currentVC = vc
    }
}

extension RootViewController: CustomTabBarDelegate {
    func didSelect(tab: TabItem) {
        switchTo(tab: tab)
    }
}
