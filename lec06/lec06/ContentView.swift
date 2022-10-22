//
//  ContentView.swift
//  lec06
//
//  Created by Rachel S on 10/20/22.
//

import SwiftUI

struct ContentView: View {
    @State var age: Int = 1
    @State var name: String = "Andy"
    
    var body: some View {
        NavigationView{
            VStack{
                Text(name)
                Text(String(age))
                NavigationLink(destination: editProfileView(age: $age, name: $name)) {
                    Text("Edit Profile")
                }
            }
        }
        .padding()
    }
}
// declare variable as binding means that we want the value to come from other view
struct editProfileView: View {
    @Binding var age: Int
    @Binding var name: String
    var body: some View {
        VStack {
            TextField("Enter Your Name", text: $name)
            TextField("Enter Your Age", value: $age, format: .number)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
