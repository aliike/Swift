//
//  ToDoListItemView.swift
//  ToDoList
//
//  Created by Ali Yetim on 26.06.2023.
//

import SwiftUI

struct ToDoListItemView: View {
    let item: ToDoListItem
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(item.title)
                    .font(.title)
                    .bold()
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            Spacer()
            
            Button(action: {
                //action
            }, label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill":"circle")
            })
            
        }.padding()
    }
}

struct ToDoListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListItemView(item: .init(id: "123", title: "Get milk", dueDate: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: true))
    }
}
