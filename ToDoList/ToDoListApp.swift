//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Gerd Faedtke on 24.01.24.
//

import SwiftUI
import SwiftData

@main
struct ToDoListApp: App {
  
    
    var body: some Scene {
        WindowGroup {
            ToDoListView()
                .modelContainer(for: ToDo.self) // linked to the class "ToDO"
        }
    }
}
