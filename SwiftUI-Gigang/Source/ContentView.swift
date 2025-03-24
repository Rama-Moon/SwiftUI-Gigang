//
//  ContentView.swift
//  SwiftUI-Gigang
//
//  Created by Rama on 3/16/25.
//

import SwiftUI

struct ContentView: View {
    let items = Array(0..<3)
    let spacing: CGFloat = 10
    let cardPadding: CGFloat = 20
    var cardWidth: CGFloat {
        UIScreen.main.bounds.width - 2 * cardPadding
    }

    @State private var scrollOffset: CGFloat = 0
    @State private var currentIndex: Int = 0

    var body: some View {
        VStack(spacing: 14) {
            HeaderView()
                .padding(.horizontal, 20)

            GeometryReader { geometry in
                let totalSpacing = spacing * CGFloat(items.count - 1)

                ScrollViewReader { proxy in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack(spacing: spacing) {
                            ForEach(items, id: \.self) { index in
                                AppCardView()
                                    .frame(width: cardWidth)
                                    .id(index)
                            }
                        }
                        .padding(.horizontal, cardPadding)
                        .contentShape(Rectangle())
                        .gesture(
                            DragGesture()
                                .onEnded { value in
                                    let dragOffset = value.translation.width
                                    let threshold: CGFloat = 50

                                    if dragOffset < -threshold && currentIndex < items.count - 1 {
                                        currentIndex += 1
                                    } else if dragOffset > threshold && currentIndex > 0 {
                                        currentIndex -= 1
                                    }

                                    withAnimation {
                                        proxy.scrollTo(currentIndex, anchor: .center)
                                    }
                                }
                        )
                    }
                }
            }
            .frame(height: 309)

            Spacer()
        }
    }
}


struct HeaderView: View {
    var body: some View {
        HStack {
            Text("Apps")
                .font(.system(size: 34, weight: .bold))
            
            Spacer()
            
            Circle()
                .foregroundStyle(._3_C_3_C_43)
                .frame(width: 32, height: 32)
                .opacity(0.16)
        }
    }
}

struct AppCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("TEXT BY EDITORIAL")
                .font(.system(size: 11, weight: .semibold))
                .foregroundColor(._007_AFF)

            Text("Title")
                .font(.system(size: 22, weight: .regular))

            Text("Text by editorial")
                .font(.system(size: 22, weight: .regular))
                .foregroundColor(._3_C_3_C_43)
                .opacity(0.6)


            ZStack(alignment: .bottom) {
                Image(.imgEventHorizontal)
                    .resizable()
                    .aspectRatio(353.0 / 217.0, contentMode: .fit)
                    .cornerRadius(8)

                HStack {
                    Image(.imgAppIcon)
                        .resizable()
                        .frame(width: 36, height: 36)

                    VStack(alignment: .leading) {
                        Text("Title")
                            .font(.system(size: 15, weight: .semibold))
                        Text("Subtitle")
                            .font(.system(size: 12, weight: .regular))
                    }

                    Spacer()

                    Button("Get") {
                                print("버튼 클릭 🎉")
                            }
                            .font(.system(size: 16, weight: .bold))
                            .foregroundColor(.white)
                            .padding(.vertical, 4)
                            .padding(.horizontal, 17)
                            .background(Color.black.opacity(0.4))
                            .cornerRadius(100)
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 17)
            }
        }
    }
}


#Preview {
    ContentView()
}
