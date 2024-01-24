//
//  WinterView.swift
//  ToDoList
//
//  Created by Gerd Faedtke on 24.01.24.
//

import SwiftUI

struct WinterView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Image(systemName: "figure.snowboarding")
                .resizable()
                .scaledToFit()
                .foregroundColor(.blue)
                
            
            Text("You are a Swifty Legend!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            
//            Button("Get Back!") {
//                dismiss()
//            }
//            .buttonStyle(.borderedProminent)
        }
        .padding()
        
    }
}

#Preview {
    WinterView()
}
