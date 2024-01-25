//
//  ToDosViewModel.swift
//  ToDoList
//
//  Created by Gerd Faedtke on 24.01.24.
//

import Foundation
import SwiftData

class ToDo: ObservableObject {
   
    var item = ""
    var reminderIsOn = false
    var dueDate = Date.now + (60*60*24) // sec. in a day
    var notes = ""
    var isCompleted = false
    
}
