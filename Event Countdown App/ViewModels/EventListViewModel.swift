//
//  EventListViewModel.swift
//  Event Countdown App
//
//  Created by Kaiserdem on 15.04.2021.
//

import Foundation

final class EventListViewModel {
    
    let title = "Events"
    var coordinator: EventListCoordinator?
    
    func tappedAddEvent() {
        print("add event")
        coordinator?.startAddEvent()
    }
}
