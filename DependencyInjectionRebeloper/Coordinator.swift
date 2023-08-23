//
//  Coordinator.swift
//  DependencyInjectionRebeloper
//
//  Created by Marcin Jędrzejak on 24/08/2023.
//

import SwiftUI

enum Page: Hashable, Equatable {
    case content
case detail(profile: Profile)
}

class Coordinator: ObservableObject {
    
    @Published var path = NavigationPath()
    
    func push(page: Page) {
        path.append(page)
    }
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .content:
            ContentView()
        case .detail(let profile):
            DetailView(profile: profile)
        }
    }
}
