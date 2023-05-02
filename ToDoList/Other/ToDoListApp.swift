//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Sade on 02/05/2023.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
