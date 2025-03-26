//
//  AppcardView.swift
//  SwiftUI-Gigang
//
//  Created by Rama on 3/26/25.
//

import SwiftUI

struct AppCardView: View {
  let tabViews = Array(1...3)
  let apps: [AppInfo]
  
  var body: some View {
    
    TabView {
      ForEach(tabViews, id: \.self) { index in
        VStack(alignment: .leading, spacing: 0) {
          Divider()
          
          HStack {
            Text("iPhone Essentials \(index)")
              .font(.title2)
              .bold()
            
            Spacer()
            
            Button(action: { //TODO: Add Action
            }) {
              Text("See All")
                .foregroundColor(.blue)
            }
          }
          .padding(.top)
          
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
      }
    }
    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    .frame(height: 250)
    .padding([.bottom, .horizontal])
  }
}

#Preview {
  AppCardView(apps: appList)
}

