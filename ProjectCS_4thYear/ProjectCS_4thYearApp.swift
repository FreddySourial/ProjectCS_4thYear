//
//  ProjectCS_4thYearApp.swift
//  ProjectCS_4thYear
//
//  Created by Freddy Sourial on 2023-03-04.
//

import SwiftUI
import Firebase
import FirebaseCore
import FirebaseAuth
@main



struct ProjectCS_4thYearApp: App {
    @ObservedObject var appState = AppState(hasOnboarded: false)
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
//            NavigationView {
//                logintest()
//            }
            if appState.hasOnboarded {
                myProfileView()
                    .environmentObject(appState)
            } else {
                
                
                ContentView()
                    .environmentObject(appState)
            }
            }
    }
}
class AppState: ObservableObject {
    @Published var hasOnboarded: Bool
    init(hasOnboarded: Bool) {
        self.hasOnboarded = hasOnboarded
    }
}
