//
//  UIViewController+Extension.swift
//  Event Countdown App
//
//  Created by Kaiserdem on 15.04.2021.
//

import UIKit

extension UIViewController {
    
    static func instantiate<T>() -> T {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(identifier: "\(T.self)") as! T
        return controller
    }
}
