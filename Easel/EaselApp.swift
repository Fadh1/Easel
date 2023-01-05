//
//  EaselApp.swift
//  Easel
//
//  Created by Fadhli Rahim on 1/1/23.
//

import SwiftUI

@main
struct EaselApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
    }
}
