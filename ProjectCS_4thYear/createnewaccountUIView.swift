//
//  createnewaccountUIView.swift
//  test.app
//
//  Created by Freddy Sourial on 2023-03-03.
//

import SwiftUI

struct createnewaccountUIView: View {
    @ObservedObject var model = ViewModel()
    
    @State var password1 = ""
    @State var username1 = ""
    var body: some View {
        
        VStack {
           
            VStack(spacing: 5){
                Text("Create New Account")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                TextField ("username1", text: $username1)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding([.top, .leading, .bottom])
                TextField("password1", text: $password1)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding([.top, .leading, .bottom])
                Button(action: {
                    model.addUser(username1: username1, password1: password1)
                    username1 = ""
                    password1 = ""
                }, label: {
                    Text("Create New Account")
                })
                .padding([.top, .leading, .bottom])
                .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
    }
}

struct createnewaccountUIView_Previews: PreviewProvider {
    static var previews: some View {
        createnewaccountUIView()
    }
}
