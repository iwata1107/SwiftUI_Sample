//
//  ContentView.swift
//  ActionSheetButton
//
//  Created by 岩田照太 on 2021/02/24.
//

import SwiftUI

struct ContentView: View {
    @State var isSheet: Bool = false
    
    var body: some View {
        Button(action: {isSheet = true}) {
         Text("Actionテスト")
        }.actionSheet(isPresented: $isSheet) {
            ActionSheet(title: Text("タイトル"),
                        message: Text("メッセージ文"),
                        buttons: [.default(Text("ボタン1"), action: {}),
                                  .default(Text("ボタン2"), action: {}),
                                  .destructive(Text("削除"), action: {}),
                                  .cancel(Text("キャンセル"), action: {})])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
