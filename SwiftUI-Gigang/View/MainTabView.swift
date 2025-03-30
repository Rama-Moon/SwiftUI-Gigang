//
//  MainTabView.swift
//  SwiftUI-Gigang
//
//  Created by jamin on 3/25/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            AppsView()
                .tabItem {
                    Image(systemName: "square.stack.3d.up.fill")
                    Text("Apps")
                }
        }
    }
}

#Preview {
    MainTabView()
}
