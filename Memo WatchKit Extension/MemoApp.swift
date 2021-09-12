//
//  MemoApp.swift
//  Memo WatchKit Extension
//
//  Created by Hamed on 4/16/21.
//

import SwiftUI

@main
struct MemoApp: App {
    let container = PersistenceController.shared.container
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environment(\.managedObjectContext, container.viewContext)
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
