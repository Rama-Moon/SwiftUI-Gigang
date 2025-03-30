//
//  AppCardView.swift
//  SwiftUI-Gigang
//
//  Created by jamin on 3/24/25.
//

import SwiftUI

struct AppCardView: View {
    let app: FeaturedAppModel
    @Binding var selectedApp: AppModel?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(app.tagText)
                .font(.caption)
                .foregroundStyle(.blue)
                .fontWeight(.semibold)
                .padding(.top, 14)
            
            Text(app.title)
                .font(.title2)
                .foregroundStyle(.black)
            
            Text(app.subTitle)
                .font(.title2)
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
                        .frame(height: 74)

                    AppRowView(style: .card, app: AppModel(name: app.name, category: app.category, developer: app.developer, iconName: "img_app_icon"))
                        .contentShape(Rectangle())
                        .onTapGesture {
                            selectedApp = AppModel(
                                name: app.name,
                                category: app.category,
                                developer: app.developer,
                                iconName: app.iconName
                            )
                        }
                        .padding(.horizontal, 20)
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 4))
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    AppCardView(app: FeaturedAppModel(name: "Featured App1", category: "category1", developer: "developer1", iconName: "img_app_icon", tagText: "HAPPENING NOW", title: "TVING", subTitle: "2025 KBO 리그, 라이브로 보세요"), selectedApp: .constant(nil))
}
