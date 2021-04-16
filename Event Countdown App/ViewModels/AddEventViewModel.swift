//
//  AddEventViewModel.swift
//  Event Countdown App
//
//  Created by Kaiserdem on 15.04.2021.
//

import Foundation

final class AddEventViewModel {
    
    var coordinator: AddEventCoordinator?
    
    func viewDidDisapear() {
        coordinator?.didFinishAddEvent()
    }
    
}
