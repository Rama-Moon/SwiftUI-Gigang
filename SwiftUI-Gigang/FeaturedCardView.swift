//
//  FeaturedCardView.swift
//  SwiftUI-Gigang
//
//  Created by Rama on 3/26/25.
//

import SwiftUI

struct FeaturedCardView: View {
  var body: some View {
    LazyVStack {
      Text("TEXT BY EDITORIAL")
        .frame(maxWidth: .infinity, alignment: .leading)
        .font(.system(size: 15))
        .fontWeight(.light)
        .foregroundColor(.blue)
      
      Text("Title")
        .frame(maxWidth: .infinity, alignment: .leading)
        .font(.system(size: 30))
        .bold()
      
      Text("Text by editorial")
        .frame(maxWidth: .infinity, alignment: .leading)
        .font(.system(size: 30))
        .foregroundColor(.gray)
      
      Button(action: {}) {
        ZStack(alignment: .bottom) {
          Image(.gradientCell)
            .resizable()
            .frame(height: 250)
            .cornerRadius(10)
          
          HStack {
            Rectangle()
              .frame(width: 40, height: 40)
              .foregroundColor(Color.gray)
              .cornerRadius(10)
            
            VStack {
              Text("Title")
                .font(.title)
                .foregroundColor(Color.black)
              Text("Subtitle")
            }
            
            Spacer()
            
            Button(action: {}) {
              Text("Get")
                .font(.title2)
                .frame(width: 80, height: 35)
                .background(Color.black.opacity(0.5))
                .foregroundColor(.white)
                .cornerRadius(18)
            }
          }
          .padding()
        }
      }
    }
  }
}

#Preview {
  FeaturedCardView()
}
