//
//  ContentView.swift
//  DependencyInjectionRebeloper
//
//  Created by Marcin Jędrzejak on 24/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        VStack {
            Button("Detail") {
                let profile = Profile(name: "Ada")
                coordinator.push(page: .detail(profile: profile))
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
