//
//  ContentView.swift
//  SwiftUIToDoList
//
//  Created by Ali Yetim on 20.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var text: String = ""
    
    var body: some View {
        NavigationView {
            VStack{
                List{
                    Section(header: Text("New Item")) {
                        HStack{
                            TextField("Enter the new item:", text: $text)
                            Button(action: {}, label: {Text("Save")})
                        }
                        
                    }
                    Section{
                        Text("hello")
                    }
                }.navigationTitle("To Do List")
            }
        
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
