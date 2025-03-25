//
//  AppsView.swift
//  SwiftUI-Gigang
//
//  Created by jamin on 3/24/25.
//

import SwiftUI

struct AppsView: View {
    let rows: [GridItem] = Array(repeating: GridItem(.fixed(76), spacing: 0), count: 3)
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 0) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 10) {
                            ForEach(0..<2, id: \.self) { index in
                                AppCardView()
                            }
                        }
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.horizontal, 20)
                    }
                    
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
                        LazyHGrid(rows: rows, spacing: 10) {
                            ForEach(0..<6) { index in
                                AppRowView()
                            }
                        }
                        .padding(.horizontal, 20)
                    }
                }
            }
            .navigationTitle("Apps")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    AppsView()
}
