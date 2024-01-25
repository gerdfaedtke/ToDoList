//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Gerd Faedtke on 24.01.24.
//

import SwiftUI

@main
struct ToDoListApp: App {
    @StateObject var toDosVM = ToDosViewModel()
    
    var body: some Scene {
        WindowGroup {
            ToDoListView()
                .environmentObject(toDosVM)
        }
    }
}
