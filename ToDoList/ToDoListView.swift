//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Gerd Faedtke on 24.01.24.
//

import SwiftUI

struct ToDoListView: View {
    @State private var sheetIsPresented = false
    
    var toDos = ["Learn Swift",
                 "Build Apps",
                 "Change The World",
                 "Bring The Awesome",
                 "Take a Vacation"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDos, id: \.self) { toDo in
                    NavigationLink {
                        DetailView(passedValue: toDo)
                    } label: {
                        Text(toDo)
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
        }
        .sheet(isPresented: $sheetIsPresented) {
            DetailView(passedValue: "")
        }
    }
}


#Preview {
    ToDoListView()
}


//ForEach(0..<100, id: \.self) { number in
//    NavigationLink {
//        DetailView(passedValue: "Item \(number)")
//    } label: {
//        Text("Item \(number) ")
//    }
//}
