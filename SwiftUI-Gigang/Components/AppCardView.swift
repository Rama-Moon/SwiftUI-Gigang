//
//  AppCardView.swift
//  SwiftUI-Gigang
//
//  Created by jamin on 3/24/25.
//

import SwiftUI

struct AppCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("TEXT BY EDITORIAL")
                .font(.caption)
                .foregroundStyle(.blue)
                .fontWeight(.semibold)
                .padding(.top, 14)
            
            Text("Title")
                .font(.title)
                .foregroundStyle(.black)
            
            Text("Text by editorial")
                .font(.title)
                .foregroundStyle(.secondary)
            
            ZStack(alignment: .bottom) {
                Image(.imgThumnail)
                    .resizable()
                    .frame(height: 227)
                    .clipShape(RoundedRectangle(cornerRadius: 4))
                    .padding(.top, 10)
                
                ZStack {
                    Rectangle()
                        .fill(
                            LinearGradient(colors: [.white.opacity(0.0), .white.opacity(0.5)], startPoint: .top, endPoint: .bottom)
                        )
                        .frame(width: .infinity, height: 74)
                    
                    AppRowView(style: .card)
                        .padding(.horizontal, 20)
                }
            }
        }
    }
}

#Preview {
    AppCardView()
}
