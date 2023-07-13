//
//  NewItemView.swift
//  ToDoList
//
//  Created by Ali Yetim on 26.06.2023.
//

import SwiftUI

struct NewItemView: View {
    
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPreseneted : Bool
    
    var body: some View {
        VStack{
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 100)
            
            Form{
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                DatePicker("Due Date",selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                TLButton(buttonText: "Save", background: .pink) {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPreseneted = false
                    } else {
                        viewModel.showAlert = true
                    }
                }
                .padding()
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(title: Text("Error"), message: Text("Please fill in all fields and select due date that is today or newer."))
            }
            
            
            
        }
        
        
    }
    
}


struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView(newItemPreseneted: Binding(get: {
            return true
        }, set: { _  in
            
        }))
    }
}
