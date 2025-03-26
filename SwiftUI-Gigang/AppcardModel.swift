//
//  AppcardModel.swift
//  SwiftUI-Gigang
//
//  Created by Rama on 3/26/25.
//

import Foundation

struct AppInfo: Identifiable {
    let id = UUID()
    let name: String
    let category: String
}

let appList = [
  AppInfo(name: "App Name 1", category: "Tech"),
  AppInfo(name: "App Name 2", category: "Living"),
  AppInfo(name: "App Name 3", category: "Game")
]
