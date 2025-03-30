//
//  ContentView.swift
//  SwiftUI-Gigang
//
//  Created by Rama on 3/16/25.
//

import SwiftUI

struct AppsContentView: View {
    @State private var selectedApp: AppModel?
    @State private var selectedFeaturedApp: FeaturedAppModel?
    let apps: [AppModel] = (1..<20).map {
        AppModel(name: "App \($0)", category: "category \($0)", developer: "developer \($0)", iconName: "img_app_icon")
    }
    
    let featuredApps: [FeaturedAppModel] = [
        FeaturedAppModel(name: "TVING", category: "category1", developer: "developer1", iconName: "img_app_icon", tagText: "HAPPENING NOW", title: "TVING", subTitle: "2025 KBO 리그, 라이브로 보세요"),
        FeaturedAppModel(name: "Meitu- Photo", category: "category2", developer: "developer2", iconName: "img_app_icon", tagText: "HAPPENING NOW", title: "메이투", subTitle: "벚꽃과 함께 인생샷을 남기세요"),
        FeaturedAppModel(name: "TikTok-Global Video Community", category: "category3", developer: "developer3", iconName: "img_app_icon", tagText: "HAPPENING NOW", title: "TVING", subTitle: "2025 KBO 리그, 라이브로 보세요")
    ]
    
    var body: some View {
        ZStack(alignment: .center) {
            ScrollView {
                LazyVStack(alignment: .leading, spacing: 0) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: 10) {
                            ForEach(featuredApps) { app in
                                AppCardView(app: app)
                                    .frame(width: UIScreen.main.bounds.width - 40)
                                    .scrollTargetLayout()
                                    .onTapGesture {
                                        selectedFeaturedApp = app
                                    }
                            }
                        }
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
                            // app 개수/3 = 페이지 수
                            let groupCount = apps.count / 3
                            
                            //페이지 수 만큼 반복 columnIndex는 0~페이지수
                            ForEach(0..<groupCount, id: \.self) { columnIndex in
                                
                                //startIndex = 0, 3, 6...
                                let startIndex = columnIndex * 3
                                
                                //각 페이지별 item index 계산 ex: [(app[0],app[1],app[2]),(app[3],app[4])]
                                // crash 나지 않도록 min() 사용
                                let group = Array(apps[startIndex..<min(startIndex + 3, apps.count)])
                                
                                VStack(spacing: 7) {
                                    ForEach(group) { app in
                                        AppRowView(style: .grid, app: app)
                                            .frame(width: UIScreen.main.bounds.width - 40)
                                            //Spacer() 부분도 터치 영역으로 잡기 위해 추가
                                            .contentShape(Rectangle())
                                            .onTapGesture {
                                                print("Tapped \(app.name)")
                                                selectedApp = app
                                            }
                                        if app != group.last {
                                            Divider()
                                                .padding(.leading, 72)
                                        }
                                    }
                                }
                                .padding(.top, 5)
                                .scrollTargetLayout()
                                
                            }
                        }
                        .padding(.horizontal, 20)
                    }
                    .scrollTargetBehavior(.viewAligned)
                }
                .navigationDestination(item: $selectedApp) { app in
                    AppsDetailView(app: app)
                }
            }
            if let featuredApp = selectedFeaturedApp {
                Color.black.opacity(0.4)
                    .ignoresSafeArea()
                    .onTapGesture {
                                selectedFeaturedApp = nil
                            }
                    .zIndex(1)
                
                FeaturedAppView(app: featuredApp) {
                    selectedFeaturedApp = nil
                }
                .ignoresSafeArea()
                .padding(.horizontal, 20)
                .padding(.vertical, 24)
                .zIndex(2)
            }
        }
    }
}

#Preview {
    AppsContentView()
}
