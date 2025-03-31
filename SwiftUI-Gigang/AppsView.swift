//
//  ContentView.swift
//  SwiftUI-Gigang
//
//  Created by Rama on 3/16/25.
//

import SwiftUI

struct AppsView: View {
  let tabViews = Array(1...3)
  
  var body: some View {
    ScrollView {
      ScrollView(.horizontal, showsIndicators: false) {
        LazyHStack(spacing: 10) {
          ForEach(0..<5, id: \.self) { index in
            FeaturedCardView()
              .frame(width: UIScreen.main.bounds.width - 40)
              .scrollTargetLayout()
          }
        }
        .padding(.horizontal, 20)
      }
      .scrollTargetBehavior(.viewAligned)
      AppCardView(apps: appList)
    }
  }
}

#Preview {
  AppsView()
}

