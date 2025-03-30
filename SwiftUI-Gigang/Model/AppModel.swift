//
//  AppModel.swift
//  SwiftUI-Gigang
//
//  Created by jamin on 3/30/25.
//

import SwiftUI

struct AppModel: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let category: String
    let developer: String
    let iconName: String
}
