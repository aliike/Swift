//
//  HeaderView.swift
//  ToDoList
//
//  Created by Ali Yetim on 24.06.2023.
//

import SwiftUI

struct HeaderView: View {
    
    let header:String
    let subheader:String
    let color:Color
    let rotation:Double
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(color)
                .rotationEffect(Angle(degrees: rotation))
            
            VStack{
                Text(header)
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                    
                
                Text(subheader)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            }
            .padding(.top,80)
            
        }.frame(width: UIScreen.main.bounds.width*3, height: 350, alignment: .center)
            .offset(y : -150)
        
    }
    
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: "Title", subheader: "Subtitle", color: .blue, rotation: -15)
    }
}
