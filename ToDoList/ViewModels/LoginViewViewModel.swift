//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Sade on 02/05/2023.
//
import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {
        
    }
    
    func login (){
        guard validate() else {
            return
        }
        // Try sign in
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    
    
   private func validate() -> Bool {
        
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields."
            return false
        }
        
        //Email validation
        guard email.contains("@" ) && email.contains(".") else {
            errorMessage = "Please enter a Valid email."
            return false
        }
        return true
    }
}
