//
//  FirstViewController.swift
//  CoordinatorExample
//
//  Created by Apinun on 4/7/2566 BE.
//

import UIKit

class FirstViewController: UIViewController, Storyboarded {
    var coordinator: MainCoordinator!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("coordinator: \(coordinator == nil)")
    }
    
    @IBAction func didTapBuy(_ sender: Any) {
        coordinator?.buySubscription()
        print(coordinator == nil)
    }

    @IBAction func didTapCreateAccount(_ sender: Any) {
        coordinator?.createAccount()
        print(coordinator == nil)
    }
}
