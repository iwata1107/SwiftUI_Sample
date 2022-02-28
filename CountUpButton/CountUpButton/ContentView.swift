//
//  ContentView.swift
//  CountUpButton
//
//  Created by 岩田照太 on 2021/02/12.
//

import SwiftUI

struct ContentView: View {
    
    @State var num: Int = 0
   
    var body: some View {
       
        HStack{
          
            Text("\(num)")
                .font(.system(size: 50))
                .padding(.trailing)
            Button(action: { num+=1
               
            }, label: {
                Text("tap").font(.largeTitle)
             
            })
        }
        .frame(width: 200, height: 80.0 , alignment: .center)
        .border(Color.gray, width: 1)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
