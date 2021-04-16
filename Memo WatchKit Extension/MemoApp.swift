//
//  MemoApp.swift
//  Memo WatchKit Extension
//
//  Created by Hamed on 4/16/21.
//

import SwiftUI

@main
struct MemoApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
