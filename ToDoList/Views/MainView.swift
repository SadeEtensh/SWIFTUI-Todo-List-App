//
//  ContentView.swift
//  ToDoList
//
//  Created by Sade on 02/05/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            LoginView()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
