//
//  AppRowView.swift
//  SwiftUI-Gigang
//
//  Created by jamin on 3/24/25.
//

import SwiftUI

struct AppRowView: View {
    var body: some View {
        HStack {
            Image(.imgAppIcon)
                .resizable()
                .frame(width: 62, height: 62)   //나중에 프로퍼티로 빼기
            
            VStack(alignment: .leading) {
                Text("App Name")
                    .font(.title3)
                    
                Text("Subtitle")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Button(action: {}) {
                Text("Get")
                    .font(.headline)
                    .bold()
                    .padding(.horizontal, 20)
                    .padding(.vertical, 2)
            }
            .buttonStyle(.bordered)
            .controlSize(.mini)
        }
        .frame(width: UIScreen.main.bounds.width - 40)
    }
}

#Preview {
    AppRowView()
}
