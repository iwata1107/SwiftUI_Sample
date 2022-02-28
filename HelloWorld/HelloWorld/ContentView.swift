//
//  ContentView.swift
//  HelloWorld
//
//  Created by 岩田照太 on 2021/01/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            
            HStack {
               Flower()
                .frame(height: 40)
               Hello()
                .font(.system(size: 20))
               Flower()
                .frame(height: 40)
            }
        
 
        .padding()
    }
}

struct Hello: View {
    var body: some View{
        Text("Hello world")
            .foregroundColor(.blue)
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
        
    }
}

struct Flower: View {
    var body: some View{
        Image("sample2")
            .resizable()
            .aspectRatio(contentMode: .fit)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
