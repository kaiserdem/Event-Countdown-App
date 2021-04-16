//
//  AddEventViewController.swift
//  Event Countdown App
//
//  Created by Kaiserdem on 15.04.2021.
//

import UIKit

class AddEventViewController: UIViewController {
    
    var viewModel: AddEventViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        
        viewModel.viewDidDisapear()
    }
    
}


