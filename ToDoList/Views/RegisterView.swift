//
//  RegisterView.swift
//  ToDoList
//
//  Created by Sade on 02/05/2023.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        
        VStack{
            //Header
            HeaderView(title: "Register",
                       subtitle: "Start Organizing todos",
                       angle: -15,
                       background: .orange)
            Spacer()
        }
            
        
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
