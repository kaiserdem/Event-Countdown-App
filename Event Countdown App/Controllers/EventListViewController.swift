//
//  EventListViewController.swift
//  Event Countdown App
//
//  Created by Kaiserdem on 08.04.2021.
//

import UIKit
import CoreData

class EventListViewController: UIViewController {

    var viewModel: EventListViewModel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    private func setupViews() {
        let image = UIImage(systemName: "plus.circle.fill")
        let barButtonItem = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(tappedAddEventButton))
        
        barButtonItem.tintColor = .primary
        navigationItem.rightBarButtonItem = barButtonItem
        navigationItem.title = viewModel.title
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @objc private func tappedAddEventButton() {
        viewModel.tappedAddEvent()
    }
}
