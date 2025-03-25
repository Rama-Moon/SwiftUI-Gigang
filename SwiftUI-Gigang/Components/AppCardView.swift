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
            
            RoundedRectangle(cornerRadius: 8)
                .frame(width: UIScreen.main.bounds.width - 40, height: 227)
                .padding(.top, 10)
        }
    }
}

#Preview {
    AppCardView()
}
