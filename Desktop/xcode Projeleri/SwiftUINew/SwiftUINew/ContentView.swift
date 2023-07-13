//
//  ContentView.swift
//  SwiftUINew
//
//  Created by Ali Yetim on 20.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Screen(title: "Home", text:"First Screen", ImageName: "house")
        }
    }
}

struct Screen: View {
    
    let title: String
    let text: String
    let ImageName: String
    
    
    var body: some View {
        VStack{
            Image(systemName: ImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200, alignment: .center)
                .padding()
            
            Text(text)
                .font(.system(size: 30,
                              weight: .light,
                              design: .default))
            
            NavigationLink(
                destination: Screen(title: "Notifications", text: "Second String", ImageName: "bell"),
                label: {
                    ContinueButton(text: "Continue", color: .blue)
                })
        }
        .navigationTitle(title)
    }
}


struct ContinueButton: View {
    let text: String
    let color: Color
    
    var body: some View {
        Text(text)
            .frame(width: 200, height: 50, alignment: .center)
            .background(color)
            .cornerRadius(15)
            .foregroundColor(.white)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
