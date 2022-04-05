//
//  PWTApp.swift
//  PWT
//
//  Created by Pauli Sairanen on 5/4/22.
//

import SwiftUI

@main
struct PWTApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
