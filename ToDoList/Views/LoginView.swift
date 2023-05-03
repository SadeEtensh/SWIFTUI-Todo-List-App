//
//  LoginView.swift
//  ToDoList
//
//  Created by Sade on 02/05/2023.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView {
            VStack {
                //Header
                HeaderView()
                
                //Login Form
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button {
                        //Attempt login
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.indigo)
                            Text("Log In")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                        
                    }

                }
                
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
