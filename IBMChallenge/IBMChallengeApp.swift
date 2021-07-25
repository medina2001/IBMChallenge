//
//  IBMChallengeApp.swift
//  IBMChallenge
//
//  Created by Gabriel de Oliveira Maciel on 25/07/21.
//

import SwiftUI

@main
struct IBMChallengeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
