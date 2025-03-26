//
//  FeaturedCardView.swift
//  SwiftUI-Gigang
//
//  Created by Rama on 3/26/25.
//

import SwiftUI

struct FeaturedCardView: View {
  var body: some View {
    let tabViews = Array(1...3)
    
    TabView(){
      ForEach(tabViews, id: \.self) { index in
        VStack {
          Text("TEXT BY EDITORIAL")
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.system(size: 15))
            .fontWeight(.light)
            .foregroundColor(.blue)
          
          Text("Title \(index)")
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.system(size: 30))
            .bold()
          
          Text("Text by editorial")
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.system(size: 30))
            .foregroundColor(.gray)
          
          Image("gradientCell")
            .resizable()
            .frame(width: .infinity, height: 227)
            .cornerRadius(15)
        }
      }
    }
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    .frame(height: 335)
    .padding([.bottom, .horizontal])
  }
}

#Preview {
  FeaturedCardView()
}
