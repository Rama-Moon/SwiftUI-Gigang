//
//  AppRowView.swift
//  SwiftUI-Gigang
//
//  Created by jamin on 3/24/25.
//

import SwiftUI

struct AppRowView: View {
    let style: AppRowStyle
    let app: AppModel
    
    enum AppRowStyle {
        case card
        case grid
        case featured
        
        var imageSize: CGFloat {
            switch self {
            case .card:
                return 36
            case .grid:
                return 62
            case .featured:
                return 36
            }
        }
        
        var titleFont: Font {
            switch self {
            case .card: return .body
            case .grid: return .title3
            case .featured: return .body
            }
        }
        
        var subtitleFont: Font {
            switch self {
            case .card: return .caption2
            case .grid: return .caption
            case .featured: return .caption2
                
            }
        }
        
        var foreGroundColor: Color {
            switch self {
            case .card: return .white
            case .grid: return .blue
            case .featured: return .white
            }
        }
        
        var backGroundColor: Color {
            switch self {
            case .card: return .black.opacity(0.4)
            case .grid: return Color(.systemGray6)
            case .featured: return .white.opacity(0.4)
            }
        }
        
        var titleColor: Color {
            switch self {
            case .card: return .black
            case .grid: return .black
            case .featured: return .white
            }
        }
        
        var subTitleColor: Color {
            switch self {
            case .card: return .secondary
            case .grid: return .secondary
            case .featured: return .white
            }
        }
    }
    
    var body: some View {
        HStack {
            Image(app.iconName)
                .resizable()
                .frame(width: style.imageSize, height: style.imageSize)
            
            VStack(alignment: .leading) {
                Text(app.name)
                    .font(style.titleFont)
                    .lineLimit(style == .card ? 1 : 2)
                    .foregroundColor(style.titleColor)
                
                Text(app.category)
                    .font(style.subtitleFont)
                    .foregroundColor(style.subTitleColor)
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
    AppRowView(style: .featured, app: AppModel(name: "ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ", category: "dd", developer: "dd", iconName: "img_app_icon"))
}
