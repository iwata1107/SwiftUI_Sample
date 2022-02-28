//
//  ContentView.swift
//  SegmentedControlSample
//
//  Created by 岩田照太 on 2021/02/17.
//

import SwiftUI

struct ContentView: View {
    @State var selectedColor = 0
    let Colors = ["Red", "Green", "Blue"]
    let ColorViews = [Color.red, Color.green, Color.blue]
    
    var body: some View {
        VStack{
            Picker(selection: $selectedColor, label: Text("Color")) {
                ForEach(0 ..< ColorViews.count) { index in
                    Text(Colors[index]).tag(index)
                }
            }
            .padding()
            .pickerStyle(SegmentedPickerStyle())
            
            Spacer()
            
                symbolImage(num: selectedColor)
                    .resizable()
                    .foregroundColor(ColorViews[selectedColor])
                    .frame(width: 100, height: 100)
                    .padding()
            
            Spacer()
            
            }
            .padding()
        

        
    }
        func symbolImage(num:Int) -> Image {
            switch num {
            case 0:
                return Image(systemName: "r.circle")
                
            case 1:
                return Image(systemName: "g.circle")
                
            case 2:
                return Image(systemName: "b.circle")
            default:
                return Image(systemName: "r.circle")
            }
           
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
