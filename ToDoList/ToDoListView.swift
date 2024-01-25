//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Gerd Faedtke on 24.01.24.
//

import SwiftUI

struct ToDoListView: View {
    @State private var sheetIsPresented = false
    @EnvironmentObject var toDosVM: ToDosViewModel
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDosVM.toDos) { toDo in
                    NavigationLink {
                        DetailView(toDo: toDo)
                    } label: {
                        Text(toDo.item)
                    }
                    .font(.title2)
                    
                }
                
            }
            .navigationTitle("To Do List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    Button {
                        sheetIsPresented.toggle()
                        
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $sheetIsPresented) {
                NavigationStack {
                    DetailView(toDo: ToDo(), newToDo: true) // new value
                    
                }
            }
            
        }
    }
}


#Preview {
    ToDoListView()
        .environmentObject(ToDosViewModel())
}
