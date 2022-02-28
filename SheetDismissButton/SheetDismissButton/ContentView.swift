//
//  ContentView.swift
//  SheetDismissButton
//
//  Created by 岩田照太 on 2021/02/28.
//

import SwiftUI

struct ContentView: View {
    @State var isShow: Bool = false
    
    var body: some View {
        Button(action: {isShow = true}) {
            Text("シートを表示")
        }
        .sheet(isPresented: $isShow) {
            SomeView(isPressed: $isShow)  //SomeViewを表示
        }
    }
}

struct SomeView: View {
    //ContentViewビューの変数isShowとバインディングする
    @Binding var isPressed: Bool
    
    var body: some View {
        NavigationView{
            VStack{
                Image(systemName: "ladybug").scaleEffect(2.0)
                Text("ハロー").font(.title2).padding()
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,  maxHeight: .infinity)
            .background(Color(red: 0.9, green: 0.9, blue:0.8))
            .ignoresSafeArea()  //ビュー領域全体を塗る
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    //閉じるボタン
                    Button {
                        isPressed = false
                    } label: {
                        Text("閉じる")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        SomeView(isPressed: Binding.constant(false))
    }
}
