//
//  ToDosViewModel.swift
//  ToDoList
//
//  Created by Gerd Faedtke on 24.01.24.
//

import Foundation

class ToDosViewModel: ObservableObject {
    @Published var toDos: [ToDo] = []
    
    init() {
        // Temp Data here. Will eventually load in saved data
        toDos.append(ToDo(id: UUID().uuidString, item: "Learn Swift"))
        toDos.append(ToDo(id: UUID().uuidString, item: "Build Apps"))
        toDos.append(ToDo(id: UUID().uuidString, item: "Change the World"))
        toDos.append(ToDo(id: UUID().uuidString, item: "Go on Vacation"))
    }
    
    func saveToDo(toDo: ToDo) {
        // if new, append toDoVM.toDos else updaate the toDo that was passed in from the List
        if toDo.id == nil  {
            var newToDo = toDo
            newToDo.id = UUID().uuidString
            toDos.append(newToDo)
            
        } else {
            if let index = toDos.firstIndex(where: {$0.id == toDo.id}) {
                toDos[index] = toDo
                
            }
        }
    }
    func deleteToDo(indexSet: IndexSet) {
        toDos.remove(atOffsets: indexSet)
    }
    func moveToDo(fromOffsets: IndexSet,toOffset: Int) {
       toDos.move(fromOffsets: fromOffsets, toOffset: toOffset)
    }
}
