//
//  swiftdata_demoApp.swift
//  swiftdata-demo
//
//  Created by Amir Kabiri on 2/1/24.
//

import SwiftUI
import SwiftData

@main
struct swiftdata_demoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: DataItem.self)
        }
    }
}
