//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Sade on 02/05/2023.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    init() {
        
    }
}
