//
//  AppsDetailView.swift
//  SwiftUI-Gigang
//
//  Created by jamin on 3/25/25.
//

import SwiftUI

struct AppsDetailView: View {
    let app: AppModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    HStack {
                        Image(.imgAppIcon)
                            .resizable()
                            .frame(width: 118, height: 118)
                        
                        VStack(alignment: .leading, spacing: 0) {
                            Text(app.name)
                                .font(.title)
                                .fontWeight(.semibold)
                            
                            Text(app.developer)
                                .font(.headline)
                                .foregroundStyle(.secondary)
                                .padding(.top, 3)
                            
                            Spacer()
                            
                            HStack {
                                Button(action: { }) {
                                    Text("Get")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 20)
                                        .padding(.vertical, 4)
                                }
                                .background(.blue)
                                .clipShape(.capsule)
                                
                                Spacer()
                                
                                Button(action: { }) {
                                    Image(systemName: "square.and.arrow.up")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 24, height: 24)
                                    
                                }
                            }
                        }  
                    }
                    .padding(.horizontal, 20)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        Divider()
                            .padding(.horizontal, 20)
                        LazyHStack {
                            ForEach(0..<7) { _ in
                                AppMetaItemView()
                                    .frame(width: 104)
                                Divider()
                                    .frame(width: 0.5, height: 40)
                                    .background(.placeholder)
                            }
                            
                        }
                        .padding(.horizontal, 20)
                    }
                    .padding(.top, 20)
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack(spacing: 10) {
                        Image(.imgScreenshot)
                        Image(.imgScreenshot)
                        Image(.imgScreenshot)
                        Image(.imgScreenshot)
                    }
                    .padding(.horizontal, 20)
                }
                .padding(.top, 20)
            }
        }
    }
}

#Preview {
    AppsDetailView(app: AppModel(name: "dd", category: "dd", developer: "dd", iconName: "imgAppIcon"))
}
