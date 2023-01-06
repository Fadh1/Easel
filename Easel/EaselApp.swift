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
        WindowGroup{
            NavigationView{
                LessonsView(lessons: Lesson.sampleData)
            }
        }
        
    }
}

/*
 Display a Dummy List of Lessons

 
 */
