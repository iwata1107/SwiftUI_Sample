//
//  ContentView.swift
//  AlertOKCancelButton
//
//  Created by 岩田照太 on 2021/02/24.
//

import SwiftUI

struct ContentView: View {
    @State var isError: Bool = false
    var body: some View {
        Button(action: { isError = true }) {
            Text("Alertテスト")
        }.alert(isPresented: $isError) {
                Alert(title: Text("タイトル"),
                      message: Text("メッセージ文"),
                      primaryButton: .default(Text("ok"), action: {okAction()}),
                      secondaryButton: .cancel(Text("キャンセル"), action: {})
                )}
       }
}

func okAction(){
    print("okが選ばれた")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
