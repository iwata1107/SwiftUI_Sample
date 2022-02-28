//
//  ContentView.swift
//  StepperSample
//
//  Created by 岩田照太 on 2021/02/12.
//

import SwiftUI

struct ContentView: View {
    
    @State var kosu: Int = 0
    var body: some View {
        Stepper(value: $kosu, in: 1...10) {
            Text("個数: \(kosu)")
        }
        .padding(.all)
        .frame(width: 200.0, height: 80.0)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
