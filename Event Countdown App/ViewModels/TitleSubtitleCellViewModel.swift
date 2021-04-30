//
//  TitleSubtitleCellViewModel.swift
//  Event Countdown App
//
//  Created by Kaiserdem on 30.04.2021.
//

import Foundation

final class TitleSubtitleCellViewModel {
    
    let title: String
    private(set) var subtitle: String
    let placeholder: String
    
    init(title: String, subtitle: String, placeholder: String) {
        self.title = title
        self.subtitle = subtitle
        self.placeholder = placeholder
    }
    
}
