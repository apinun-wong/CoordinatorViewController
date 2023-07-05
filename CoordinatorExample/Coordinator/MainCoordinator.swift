//
//  MainCoordinator.swift
//  CoordinatorExample
//
//  Created by Apinun on 4/7/2566 BE.
//

import UIKit
import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    var viewControllerRef: UIViewController?
    var firstViewController: FirstViewController!
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    deinit {
        print("deinit")
    }
    
    func start() {
        firstViewController = FirstViewController.instantiate(storyboard: "Main")
        viewControllerRef = firstViewController
        firstViewController.coordinator = self
        navigationController.pushViewController(firstViewController, animated: false)
    }
    
    func buySubscription() {
        let vc = BuyViewController.instantiate(storyboard: "Main")
        viewControllerRef = vc
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func createAccount() {
        let vc = CreateAccountViewController.instantiate(storyboard: "Main")
        viewControllerRef = vc
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
