//
//  ProjectCS_4thYearApp.swift
//  ProjectCS_4thYear
//
//  Created by Freddy Sourial on 2023-03-04.
//

import SwiftUI
import Firebase
@main
struct ProjectCS_4thYearApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
