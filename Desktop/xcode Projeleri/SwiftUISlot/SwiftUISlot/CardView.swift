//
//  CardView.swift
//  SwiftUISlot
//
//  Created by Ali Yetim on 22.06.2023.
//

import SwiftUI

struct CardView: View {
    
    @Binding var symbol:String
    @Binding var background:Color
    
    var body: some View {
        Image(symbol)
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
            .background(background.opacity(0.4))
            .cornerRadius(12)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(symbol: Binding.constant("cherry"), background: Binding.constant(Color.green))
    }
}
