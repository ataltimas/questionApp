//
//  ContentView.swift
//  questionApp
//
//  Created by scholar on 4/23/23.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
    @State var age = ""
    @State var color = ""
    @State var showName = false
    @State var showAge = false
    @State var showColor = false
    

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("What's your name?")
                    .font(.title2)
                    .fontWeight(.light)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                    .frame(width: 200, height: 20, alignment: .center)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                Button("Submit") {
                    self.showName = true }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .fullScreenCover(isPresented: $showName) {
                    VStack {
                        Text("Hello, \(name)! 🥰🤍")
                            .font(.title2)
                            .fontWeight(.light)
                            .padding()
                            .background(Color.pink.opacity(0.2))
                        Button("Back") {
                            self.showName = false
                        }
                    }
                }
                
                
                Spacer()
                
                Text("How old are you?")
                    .font(.title2)
                    .fontWeight(.light)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                TextField("Enter your age", text: $age)
                    .multilineTextAlignment(.center)
                    .frame(width: 200)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                Button("Submit") {
                    self.showAge = true }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .fullScreenCover(isPresented: $showAge) {
                    VStack {
                        Text("You are \(age) years old, queen! 🥳✨")
                            .font(.title2)
                            .fontWeight(.light)
                            .padding()
                            .background(Color.teal.opacity(0.2))
                        Button("Back") {
                            self.showAge = false
                            
                        }
                    }
                }
            
                
                Spacer()
                
            }
            
            .padding()
            .background(Color.green.opacity(0.2))
        
        }
    }
  
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
    
    
    
    
    
    
    
    
}
