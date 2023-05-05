//
//  LoginView.swift
//  ToDoList
//
//  Created by Sade on 02/05/2023.
//

import SwiftUI

struct LoginView: View {
    
   @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationView {
            VStack {
                //Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: .indigo)
                
                
                
                //Login Form
                Form {
                    
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(
                        title: "Log In",
                        background: .indigo)
                    {
                        viewModel.login()
                    }
                    .padding()

                }
                .offset(y: -50)
                
                //Create Account
                
                VStack{
                    Text("New arounf Here?")
    //                Button("Create an Account") {
    //                    //Show registration
    //                }
                    NavigationLink("Create an Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
