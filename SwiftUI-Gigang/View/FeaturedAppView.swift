//
//  FeaturedAppView.swift
//  SwiftUI-Gigang
//
//  Created by jamin on 3/30/25.
//

import SwiftUI

struct FeaturedAppView: View {
    let app: FeaturedAppModel
    let onClose: () -> Void
    @Binding var selectedApp: AppModel?

    var body: some View {
        ZStack {
            Image(.imgThumnail)
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Text(app.tagText)
                        .foregroundColor(.black.opacity(0.6))
                        .fontWeight(.semibold)
                        .padding(.vertical, 3)
                        .padding(.horizontal, 10)
                        .background(Color.white.opacity(0.8))
                        .clipShape(RoundedRectangle(cornerRadius:7))
                        
                    
                    Spacer()
                    
                    Button(action: {
                        onClose()
                    }) {
                        Image(systemName: "xmark")
                            .foregroundColor(.black.opacity(0.6))
                            .bold()
                            .frame(width: 36, height: 36)
                            .background(.white.opacity(0.8))
                            .clipShape(.circle)
                    }
                }
                .padding(.top, 22)
                
                Spacer()
                
                Text("SPECIAL EVENT")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                
                HStack {
                    Text(app.subTitle)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)                    
                    Spacer()
                    
                    Button(action: { }) {
                        Image(systemName: "square.and.arrow.up")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                            .foregroundStyle(.white.opacity(0.65))
                    }
                }
                
                Text("Event descriptionEvent descriptionEvent descriptionEvent descriptionEvent descriptionEvent descriptionEvent descriptionEvent descriptionEvent descriptionEvent descriptionEvent description")
                    .font(.caption)
                    .foregroundStyle(.white.opacity(0.65))
                    .padding(.top, 5)
                
                Divider()
                    .background(Color.white)
                    .padding(.top, 18)
                
                AppRowView(style: .featured, app: AppModel(name: app.name, category: app.category, developer: app.developer, iconName: "img_app_icon"))
                    .padding(.vertical, 20)
            }
            //터치 영역 잡기
            .contentShape(Rectangle())
            .onTapGesture {
                selectedApp = AppModel(name: app.name, category: app.category, developer: app.developer, iconName: app.iconName)
                onClose()
            }
            .padding(.horizontal, 20)
        }
        .clipShape(.rect(cornerRadius: 8))
    }
}

#Preview {
    FeaturedAppView(app: FeaturedAppModel(name: "Featured App1", category: "category1", developer: "developer1", iconName: "img_app_icon", tagText: "HAPPENING NOW", title: "TVING", subTitle: "2025 KBO 리그, 라이브로 보세요"), onClose: {}, selectedApp: .constant(nil))
}
