//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Ali Yetim on 25.06.2023.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    @FirestoreQuery var items: [ToDoListItem]
    

    
    init(userID: String){
        self._items = FirestoreQuery(collectionPath:
                                        "users/\(userID)/todos"
        )
    }
    
    var body: some View {
        NavigationView{
            VStack{
                List(items) { item in
                    Text(item.title)
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button(action: {
                    //Action
                    viewModel.showingNewItemView = true
                }, label: {
                    Image(systemName: "plus")
                })
                
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPreseneted: $viewModel.showingNewItemView)
            }
        }
        

    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(userID: "slmYKDFb3gg7mQj4a5VXQzdcOjk2")
    }
}
