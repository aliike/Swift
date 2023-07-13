//
//  LogInView.swift
//  ToDoList
//
//  Created by Ali Yetim on 25.06.2023.
//

import SwiftUI

struct LogInView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        VStack {
            //Header
            HeaderView(header: "To Do List",
                       subheader: "Get things done",
                       color: .pink,
                       rotation: 15)
            
            
            
            //Login Form
            Form{
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundColor(.red)
                }
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(.roundedBorder)
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(.roundedBorder)
                    .autocorrectionDisabled()
                
                TLButton(buttonText: "Log In",
                         background: .blue) {
                    viewModel.login()
                }
                
                    
                
            }.offset(y:-50)
            
            VStack{
                Text("New around here?")
                NavigationLink("Create an account",destination:RegisterView())
            }.padding(.bottom,50)
            //Create account
                
            
            Spacer()
        }
    }
    
    }

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
