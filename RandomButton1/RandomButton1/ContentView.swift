//
//  ContentView.swift
//  RandomButton1
//
//  Created by 岩田照太 on 2021/02/11.
//

import SwiftUI


struct ContentView: View {
    
    @State var num: Int = 0
    
    var body: some View {
        Button(action: {
             num = Int.random(in: 0...100)
            print(num)
        }) {
            Text("Random Button")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .frame(width: 280.0, height: 60.0)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
                .cornerRadius(15, antialiased: true)
           }
        Text("\(num)")
            .font(.largeTitle)
            .padding()
        
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
