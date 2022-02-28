//
//  ContentView.swift
//  WheelPickerSample
//
//  Created by 岩田照太 on 2021/02/16.


import SwiftUI

struct ContentView: View {
    @State private var selectedColor = 0
    @State private var selectedSize  = 2
    let sizes  = ["XS", "S", "M", "L", "LL"]
    let colors = ["red","green","blue","yellow","Pink","white"]
    var body: some View {
        VStack{
            HStack{
                
                Picker(selection: $selectedSize, label: Text("Size")) {
                    ForEach(0 ..< sizes.count) { index in
                        Text(sizes[index])
                    }
                }
                .frame(width: 150)
                .padding(.horizontal,10)
                .clipped()
                
                Picker(selection: $selectedColor, label: Text("Color")) {
                    ForEach(0 ..< colors.count) { index in
                        Text(colors[index])
                    }
                }
                .frame(width: 150)
                .padding(.horizontal,10)
                .clipped()
                .onAppear(perform: {
                    selectedColor = colors.count/2
                })
            }
            HStack{
                Text("size:  \(sizes[selectedSize])")
                    .padding(.horizontal,40)
                Text("color:   \(colors[selectedColor])")
                    .padding(.horizontal,30)
            }
            .foregroundColor(.white)
            .font(.title2)
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 400, height: 50)
                    .foregroundColor(.green)
            )
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
            .padding(.horizontal)
    }
}
