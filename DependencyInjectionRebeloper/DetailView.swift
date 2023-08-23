//
//  DetailView.swift
//  DependencyInjectionRebeloper
//
//  Created by Marcin Jędrzejak on 24/08/2023.
//

import SwiftUI

struct DetailView: View {
    
    let profile: Profile
    
    var body: some View {
        Text("Hello, \(profile.name)")
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView()
//    }
//}
