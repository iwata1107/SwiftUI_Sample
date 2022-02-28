//
//  ContentView.swift
//  EnvironmentObjectSample
//
//  Created by 岩田照太 on 2021/03/01.
//

import SwiftUI

struct ContentView: View {
    //共有するオブジェクトを指定する
    @EnvironmentObject var setData: ShareData    //共有オブジェクト
    //シートが開いている状態
    @State var isShow: Bool = false
    
    var body: some View {
        VStack{
            //現在の設定
            VStack(alignment: .leading, spacing: 5){
                Text("設定:\(setData.isOn ? "ON" : "OFF")")
                Text("評価: " + String(repeating: "★", count: setData.num))
            }.font(.title2)
            //シートを表示するボタン
            Button("[設定を変更する]"){
                isShow = true
            }
            .padding()
            .sheet(isPresented: $isShow){
                SettingView(isPresented: $isShow)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
