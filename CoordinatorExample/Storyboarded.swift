//
//  Storyboarded.swift
//  CoordinatorExample
//
//  Created by Apinun on 4/7/2566 BE.
//

import UIKit

protocol Storyboarded {
    static func instantiate(storyboard: String) -> Self
}

extension Storyboarded where Self: UIViewController {
    /**
     Default implementation of the static function which returns an instace of a View Controller which indicated by a string name.
     -  Parameters:
        - name: Name of the Storyboard
     
     - Returns: An instance of a UIViewController which is indicated by its `Storyboard ID`
     */
    static func instantiate(storyboard: String) -> Self {
        let viewControllerName = NSStringFromClass(self)
        let className = viewControllerName.components(separatedBy: ".")[1]
        let storyboardObject = UIStoryboard(name: storyboard, bundle: Bundle.main)
        return storyboardObject.instantiateViewController(withIdentifier: className) as! Self
    }
}
