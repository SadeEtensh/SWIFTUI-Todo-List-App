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
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(Color.orange)
                    .rotationEffect(Angle(degrees: -15))
                VStack {
                    Text("Register")
                        .font(.system(size: 50))
                        .foregroundColor(Color.white)
                        .bold()
                         
                    Text("Start Organizing todos")
                        .font(.system(size: 30))
                        .foregroundColor(Color.white)
                }.padding(.top, 30)
            }
            .frame(width: UIScreen.main.bounds.width * 3
                   , height: 300)
            .offset(y:-100)
            Spacer()
        }
            
        
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
