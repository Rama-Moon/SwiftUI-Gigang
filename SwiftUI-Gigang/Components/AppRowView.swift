//
//  AppRowView.swift
//  SwiftUI-Gigang
//
//  Created by jamin on 3/24/25.
//

import SwiftUI

struct AppRowView: View {
    let style: AppRowStyle
    
    enum AppRowStyle {
        case card
        case grid
        
        var imageSize: CGFloat {
            switch self {
            case .card:
                return 36
            case .grid:
                return 62
            }
        }
        
        var titleFont: Font {
            switch self {
            case .card: return .body
            case .grid: return .title3
            }
        }

        var subtitleFont: Font {
            switch self {
            case .card: return .caption2
            case .grid: return .caption
            }
        }
        
        var foreGroundColor: Color {
            switch self {
            case .card: return .white
            case .grid: return .blue
            }
        }
        
        var backGroundColor: Color {
            switch self {
            case .card: return .black.opacity(0.4)
            case .grid: return Color(.systemGray6)
            }
        }
    }
    
    var body: some View {
        HStack {
            Image(.imgAppIcon)
                .resizable()
                .frame(width: style.imageSize, height: style.imageSize)
            
            VStack(alignment: .leading) {
                Text("App Name")
                    .font(style.titleFont)
                    
                Text("Subtitle")
                    .font(style.subtitleFont)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Button(action: {}) {
                Text("Get")
                    .font(.headline)
                    .bold()
                    .padding(.horizontal, 20)
                    .padding(.vertical, 4)
                    .tint(style.foreGroundColor)
            }
            .background(style.backGroundColor)
            .clipShape(Capsule())
        }
    }
}

#Preview {
    AppRowView(style: .grid)
}
