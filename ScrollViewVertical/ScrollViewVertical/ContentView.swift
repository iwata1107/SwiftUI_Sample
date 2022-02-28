//
//  ContentView.swift
//  ScrollViewVertical
//
//  Created by 岩田照太 on 2021/02/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView//(.horizontal)
        {
            LazyVStack{//横向きにスクロールしたければHStackにすれば良い
                ForEach(0..<10){ num in
                    Page(str: String(num))
                        
                }
            }
        }
    }
}

struct Page: View {
    let w:CGFloat = UIScreen.main.bounds.width-40 //*3/5
    let h:CGFloat = 200
    let str:String
    var body: some View {
        ZStack{
            Color.gray
                .frame(width: w, height: h)
                .cornerRadius(8)
            Text(str)
                .font(.largeTitle)
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
