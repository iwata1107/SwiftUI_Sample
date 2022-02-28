//
//  ContentView.swift
//  PickerNavigationView
//
//  Created by 岩田照太 on 2021/02/18.
//

import SwiftUI

struct ContentView: View {
    @State var selectedSize = 0
    @State var selectedColor = 0
    let sizes = ["XS", "S", "M", "L", "LL"]
    let colors = ["Red","Green","Blue","Yellow","Pink","White"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("サイズ").font(.headline), footer: Text("USサイズの少し大きめです"))  {
                    
                    Picker(selection: $selectedSize, label: Text("Size")) {
                        ForEach(0 ..< sizes.count) { index in
                            Text(sizes[index])
                        }
                    }
                    Text("選んだサイズ :  \(sizes[selectedSize])")
                }
                
                
                Section(header: Text("色").font(.headline)){
                   
                    
                    Picker(selection: $selectedColor, label: Text("Color")) {
                        ForEach(0 ..< colors.count) { index in
                            Text(colors[index])
                        }
                    }
                    Text("選んだ色 :  \(colors[selectedColor])")
                    
                }

            }
            .navigationTitle(Text("サイズと色"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
