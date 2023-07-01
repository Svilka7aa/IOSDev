//
//  ContentView.swift
//  LogInDemo
//
//  Created by Svilen Petrov on 02/02/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = LoginViewModel()
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        VStack {
            Text("Please Login")
            TextField("Username", text:$username)
            SecureField("Password",
                      text: $password)
            
            Button(viewModel.buttonTitle) {
                if username.isEmpty == false
                    && password.isEmpty == false {
                    viewModel.login(username: username, password: password)
                }
            }
            .padding(.all)
            .background(Color.blue)
            .foregroundColor(.black)
            .cornerRadius(16)
            .shadow(radius: 8)
            
        }
        .padding()
    }
}
    
class LoginViewModel: ObservableObject {
    @Published var buttonTitle: String = "Login"
    func login(username: String, password: String) {
        buttonTitle = "Logged In"
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
