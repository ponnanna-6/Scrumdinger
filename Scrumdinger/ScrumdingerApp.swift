//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Logycent on 10/12/2024.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrumData = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrumData)
        }
    }
}
