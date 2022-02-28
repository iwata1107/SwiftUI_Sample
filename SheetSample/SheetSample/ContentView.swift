//
//  ContentView.swift
//  SheetSample
//
//  Created by 岩田照太 on 2021/02/25.
//

import SwiftUI

struct ContentView: View {
    @State var isModal: Bool = false
    
    var body: some View {
        Button(action: {isModal = true}) {
            Text("Sheetテスト")
        }.sheet(isPresented: $isModal){
            SomeView()
        }
    }
}

struct SomeView: View {
    var body: some View {
        VStack{
            Text("プレゼンテーション")
            Image(systemName: "gift")
                .imageScale(.large)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        SomeView()
    }
}
