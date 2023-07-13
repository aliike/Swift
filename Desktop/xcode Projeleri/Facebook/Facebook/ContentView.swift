//
//  ContentView.swift
//  Facebook
//
//  Created by Ali Yetim on 21.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @Binding var text:String
    
    let stories = ["ali","resim1","resim2","resim3","resim4","resim2","resim2","resim2"]
    
    let facebookBlue = UIColor(red: 23/255, green: 120/255, blue: 242/255, alpha: 1)
    var body: some View {
        VStack {
            VStack{
                HStack{
                    Text("facebook")
                        .font(.system(size: 48, weight: .bold, design: .default))
                        .foregroundColor(Color(facebookBlue))
                    
                    Spacer()
                    
                    
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 45, height: 45, alignment: .center)
                        .foregroundColor(Color(.secondaryLabel))
                }
                .padding()
                
                TextField("Search...", text: $text)
                    .padding(7)
                    .background(Color(.systemGray5))
                    .cornerRadius(13)
                    .padding(.horizontal, 15)
                ZStack{
                    Color(.secondarySystemBackground)
                    
                    ScrollView(.vertical) {
                        VStack{
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 30){
                                    ForEach(stories, id: \.self ) { name in
                                        Image(name)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 140, height: 200, alignment: .center)
                                            .clipped()
                                            .cornerRadius(40)
                                    }
                                    
                                    
                                    
                                    
                                    
                                }
                                .padding()
                                
                                
                                
                            }
                            FBPost()
                        }
                    }
                    
                    Spacer()
                    
                }
            }
        }
    }
    
    
    struct FBPost: View {
        var body: some View{
            VStack{
                HStack{
                    Image("ali")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(25)
                    VStack{
                        HStack{
                            Text("Ali Yetim")
                                .foregroundColor(Color.blue)
                                .font(.system(size: 18, weight: .semibold, design: .default))
                            Spacer()
                        }
                        HStack{
                            Text("21 minutes ago")
                                .foregroundColor(Color(.secondaryLabel))
                            Spacer()
                        }
                        
                    }
                    Spacer()
                }
                HStack{
                    
                }
                HStack{
                    
                }
            }
            .padding()
            
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(text: .constant(""))
        }
    }
}
