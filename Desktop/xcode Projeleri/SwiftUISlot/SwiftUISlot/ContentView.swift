//
//  ContentView.swift
//  SwiftUISlot
//
//  Created by Ali Yetim on 22.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var symbols = ["apple", "cherry", "star"]
    @State private var symbolValues = [0,1,2]
    @State private var credit = 1000
    @State private var betAmount = 10
    @State private var backgrounds = [Color.white,Color.white,Color.white]
    @State private var operation = " "
    @State private var foreground:Color = Color.white
    
    
    var body: some View {
        ZStack {
            Rectangle()
            
                .fill(LinearGradient(colors: [Color.blue,Color.green], startPoint: .topLeading, endPoint: .bottomTrailing))
            
            
                .edgesIgnoringSafeArea(.all)
            
            
            
            VStack{
                
                Text("Slot Machine")
                
                    .bold()
                    .font(.system(size: 40, weight: .heavy, design: .monospaced))
                
                Spacer()
                
                Text("Credits: " + String(credit))
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .padding(.all)
                    .background(Color.white.opacity(0.2))
                    .cornerRadius(20)
                    .foregroundColor(foreground)
                
                Spacer()
                
                HStack{
                    CardView(symbol: $symbols[symbolValues[0]],background: $backgrounds[0])
                    CardView(symbol: $symbols[symbolValues[1]],background: $backgrounds[0])
                    CardView(symbol: $symbols[symbolValues[2]],background: $backgrounds[0])
                }.padding(10)
                if operation == " "{
                    Text(" ")
                }
                else{
                    Win_Lose_Display(operation: $operation, bet: $betAmount, redOrGreen: $foreground)
                }
              
                
                Spacer()
                
                Button(action: {
                    
                    symbolValues[0] = Int.random(in: 0...symbolValues.count-1)
                    symbolValues[1] = Int.random(in: 0...symbolValues.count-1)
                    symbolValues[2] = Int.random(in: 0...symbolValues.count-1)
                    
                    let repeated = repeatElement(symbolValues[0], count: symbolValues.count)
                    let isEqual = symbolValues.elementsEqual(repeated)
                    
                    if isEqual{
                        credit += betAmount*5
                        
                        backgrounds[0] = Color.green
                        backgrounds[1] = Color.green
                        backgrounds[2] = Color.green
                        
                        operation = "+"
                        foreground = Color.blue
                        
                        
                    }
                    else{
                        credit -= betAmount
                        
                        backgrounds[0] = Color.white
                        backgrounds[1] = Color.white
                        backgrounds[2] = Color.white
                        
                        operation = "-"
                        foreground = Color.red
                    }
                    
                    

                    
                }, label: {
                    
                    Text("Spin!")
                        .foregroundColor(.black)
                        .padding([.top,.bottom],20)
                        .padding([.leading,.trailing],50)
                        .font(.system(size: 25, weight: .bold, design: .default))
                        .background(Color.white.opacity(0.4))
                        .cornerRadius(15)
                })
                .padding()
                Spacer()
            }
            
            
        }
        
        
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
