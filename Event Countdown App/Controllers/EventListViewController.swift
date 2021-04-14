//
//  EventListViewController.swift
//  Event Countdown App
//
//  Created by Kaiserdem on 08.04.2021.
//

import UIKit
import CoreData

class EventListViewController: UIViewController {

    private let coreDataManager = CoreDataManager()
    
    static func instantiate() -> EventListViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(identifier: "EventListViewController") as! EventListViewController
        return controller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        
        coreDataManager.saveEvent(name: "New YEAR", date: Date(), image: #imageLiteral(resourceName: "Unknown"))
        print(coreDataManager.fetchEvents())
    }
    
    private func setupViews() {
        let image = UIImage(systemName: "plus.circle.fill")
        let barButtonItem = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(tappedRightBarButton))
        
        barButtonItem.tintColor = .primary
        navigationItem.rightBarButtonItem = barButtonItem
        navigationItem.title = "Events"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @objc private func tappedRightBarButton() {
        print("tapped right")
    }
}
