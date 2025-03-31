//
//  AppcardView.swift
//  SwiftUI-Gigang
//
//  Created by Rama on 3/26/25.
//

import SwiftUI

struct AppCardView: View {
  let apps: [AppInfo]
  
  var body: some View {
    
    Divider()
    
    HStack {
      Text("iPhone Essentials")
        .font(.title2)
        .bold()
      
      Spacer()
      
      Button(action: { //TODO: Add Action
      }) {
        Text("See All")
          .foregroundColor(.blue)
      }
    }
    .padding(.horizontal)
    
    ScrollView(.horizontal, showsIndicators: false) {
      LazyHStack {
        ForEach(0..<5, id: \.self) { index in
          VStack(alignment: .leading, spacing: 0) {
            ForEach(apps) { app in
              HStack {
                Rectangle()
                  .frame(width: 50, height: 50)
                  .cornerRadius(8)
                  .foregroundColor(Color.gray.opacity(0.3))
                VStack {
                  HStack {
                    VStack(alignment: .leading, spacing: 4) {
                      Text(app.name)
                        .font(.headline)
                      Text(app.category)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Button("Get") {
                      //TODO: Add Action
                    }
                    .padding(.horizontal, 23)
                    .padding(.vertical, 8)
                    .background(
                      RoundedRectangle(cornerRadius: 17)
                        .fill(Color.gray.opacity(0.2))
                    )
                  }
                  
                  if app.id != apps.last?.id {
                    Divider()
                  }
                }
              }
              .padding(.vertical, 8)
            }
          }
          .scrollTargetLayout()
          .frame(width: UIScreen.main.bounds.width - 40)
        }
      }
    }
    .scrollTargetBehavior(.viewAligned)
    .padding(.horizontal)
    .background(Color.red.opacity(0.1))
  }
}

#Preview {
  AppCardView(apps: appList)
}
