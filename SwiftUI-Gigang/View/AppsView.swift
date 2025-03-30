//
//  AppsView.swift
//  SwiftUI-Gigang
//
//  Created by jamin on 3/24/25.
//

import SwiftUI

struct AppsView: View {
    
    var body: some View {
        NavigationStack {
            AppsContentView()
                .navigationTitle("Apps")
                .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    AppsView()
}
