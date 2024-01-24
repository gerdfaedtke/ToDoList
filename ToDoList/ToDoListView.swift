//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Gerd Faedtke on 24.01.24.
//

import SwiftUI

struct ToDoListView: View {
    var body: some View {
        NavigationStack {
            VStack {            NavigationLink {
                DetailView()
            } label: {
                Image(systemName: "eye")
                Text("Show the new View!")
            }
            .buttonStyle(.borderedProminent)
            }
            .padding()
        }
    }
}

#Preview {
    ToDoListView()
}


