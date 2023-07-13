//
//  TLButton.swift
//  ToDoList
//
//  Created by Ali Yetim on 25.06.2023.
//

import SwiftUI

struct TLButton: View {
    
    let buttonText:String
    let background:Color
    let action: () -> Void
    
    
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(buttonText)
                    .foregroundColor(.white)
                    .bold()
                    
            }
            
        }).padding()
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(buttonText: "Button Text",background: .black) {
            //action
        }
    }
}
