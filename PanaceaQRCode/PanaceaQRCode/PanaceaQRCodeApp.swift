//
//  PanaceaQRCodeApp.swift
//  PanaceaQRCode
//
//  Created by Rex Ramza on 11/7/22.
//

import SwiftUI

@main
struct PanaceaQRCodeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
