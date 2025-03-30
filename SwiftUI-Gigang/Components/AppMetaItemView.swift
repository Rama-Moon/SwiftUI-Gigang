//
//  AppInfoView.swift
//  SwiftUI-Gigang
//
//  Created by jamin on 3/26/25.
//

import SwiftUI

struct AppMetaItemView: View {
    
    enum InfoDetailType {
        case text(String)
        case stars(Int)
        case developerIcon(name: String)
    }
    
    var body: some View {
        VStack(spacing: 3) {
            Text("AGE")
                .font(.subheadline)
                .foregroundStyle(.secondary)
            
            Text("12+")
                .font(.system(size: 22, weight: .bold, design: .rounded))
                .foregroundStyle(.gray)
            
            Text("Years Old")
                .font(.subheadline)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    AppMetaItemView()
}
