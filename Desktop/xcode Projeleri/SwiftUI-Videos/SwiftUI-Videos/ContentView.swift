//
//  ContentView.swift
//  SwiftUI-Videos
//
//  Created by Ali Yetim on 27.10.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(0 ..< 10) { item in
                Image("james")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 90.0)
                    .cornerRadius(8)
                Spacer().frame(width: 16)
                
                
                VStack(alignment: .leading) {
                    
                    Text("James Hetfield Moscow Performance")
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        
                    Spacer().frame(height: 5)
                    Text("January 23, 2022")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    
                    
                }
                
                
                
            }.navigationBarTitle(Text("Ali's Videos"))
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
