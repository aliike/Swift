//
//  Win-Lose-Display.swift
//  SwiftUISlot
//
//  Created by Ali Yetim on 22.06.2023.
//

import SwiftUI

struct Win_Lose_Display: View {
    
    @Binding var operation:String
    @Binding var bet:Int
    @Binding var redOrGreen: Color
    
    var body: some View {
        if operation == "-"{
            Text(operation + String(bet))
                .font(.system(size: 40, weight: .heavy, design: .default))
                .shadow(color: .black, radius: 5, x: 10, y: 10)
                .foregroundColor(redOrGreen)
        } else if operation == ""{
            Text("")
            
        }
        else {
            Text(operation + String(bet*5))
                .font(.system(size: 40, weight: .heavy, design:
                        .default))
                .shadow(color: .black, radius: 5, x: 10, y: 10)
                .foregroundColor(redOrGreen)
        }
        
        
    }
}

struct Win_Lose_Display_Previews: PreviewProvider {
    static var previews: some View {
        Win_Lose_Display(operation: Binding.constant(""),
                         bet: Binding.constant(0),
                         redOrGreen: Binding.constant(Color.clear))
    }
}
