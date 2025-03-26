//
//  ContentView.swift
//  SwiftUI-Gigang
//
//  Created by Rama on 3/16/25.
//

import SwiftUI

struct ContentView: View {
  let tabViews = Array(1...3)
    
  var body: some View {
    VStack {
      HStack {
        Text("Apps")
          .font(.largeTitle)
          .bold()
        
        Spacer()
        
        Button(action: {
          
          print("프로필")
        }) {
          Circle()
            .fill(Color.gray)
            .frame(width: 50, height: 40)
        }
      }
      .padding()
      
      FeaturedCardView()
      AppCardView(apps: appList)
      Spacer()
    }
  }
}

#Preview {
  ContentView()
}

