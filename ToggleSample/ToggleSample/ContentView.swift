//
//  ContentView.swift
//  ToggleSample
//
//  Created by 岩田照太 on 2021/02/12.
//

import SwiftUI

struct ContentView: View {
    @State var iLike = true
    
    var body: some View {
        VStack{
        Toggle(isOn: $iLike) {
            Text("Like or Not")
                .font(.largeTitle)
        }
        .fixedSize()
        .padding(50)
            
            if iLike {    //trueの処理
                Image(systemName: "heart.fill")
                    .font(.system(size: 80))
                    .opacity(0.9)
                    .foregroundColor(.red)
            } else {      //falseのshp
                Image(systemName: "heart.slash")
                    .font(.system(size: 80))
                    .foregroundColor(.black)
            }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
