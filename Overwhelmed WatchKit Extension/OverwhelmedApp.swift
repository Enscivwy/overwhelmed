//
//  OverwhelmedApp.swift
//  Overwhelmed WatchKit Extension
//
//  Created by Nikhil Rao on 12/28/20.
//

import SwiftUI

@main
struct OverwhelmedApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
