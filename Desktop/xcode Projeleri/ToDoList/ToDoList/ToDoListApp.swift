//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Ali Yetim on 24.06.2023.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    init() {
        FirebaseCore.FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
