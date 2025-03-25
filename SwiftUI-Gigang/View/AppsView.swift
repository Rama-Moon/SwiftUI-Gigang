//
//  AppsView.swift
//  SwiftUI-Gigang
//
//  Created by jamin on 3/24/25.
//

import SwiftUI

struct AppsView: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 0) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 10) {
                            ForEach(0..<5, id: \.self) { index in
                                AppCardView()
                                    .scrollTargetLayout()
                            }
                        }
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.horizontal, 20)
                    }
                    .scrollTargetBehavior(.viewAligned)
                    
                    Group {
                        Divider()
                            .padding(.top, 32)
                        
                        HStack {
                            Text("iPhone Essentials")
                                .font(.title)
                                .bold()
                                .padding(.top, 6)
                            
                            Spacer()
                            
                            Text("See All")
                                .font(.title3)
                                .padding(.top, 6)
                                .foregroundStyle(.blue)
                        }
                    }
                    .padding(.horizontal, 20)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 10) {
                            ForEach(0..<6, id: \.self) { columnIndex in
                                VStack(spacing: 10) {
                                    ForEach(0..<3, id: \.self) { rowIndex in
                                        AppRowView(style: .grid)
                                            .frame(width: UIScreen.main.bounds.width - 40)
                                    }
                                }
                                .scrollTargetLayout()
                            }
                        }
                        .padding(.horizontal, 20)
                    }
                    .scrollTargetBehavior(.viewAligned)                }
            }
            .navigationTitle("Apps")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    AppsView()
}
