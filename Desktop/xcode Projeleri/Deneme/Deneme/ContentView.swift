//
//  ContentView.swift
//  Deneme
//
//  Created by Ali Yetim on 31.10.2022.
//

import SwiftUI


struct ContentView: View {
    
    var a = 5
    @State private var runCount = 0
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.blue)
        
                
            Text(String(runCount))
                .frame(width: 200, height: 40)
                .padding()
            Button{
                runCount += 1
            } label: {
                Text("Button")
                    .frame(width: 200, height: 40)
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    
                    
                
                
            }
            }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
