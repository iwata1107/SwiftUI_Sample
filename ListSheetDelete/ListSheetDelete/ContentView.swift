//
//  ContentView.swift
//  ListSheetDelete
//
//  Created by 岩田照太 on 2021/02/25.
//

import SwiftUI

struct ContentView: View {
    @State var isSheet: Bool = false
    
    var body: some View {
        Button(action: {isSheet = true}) {
            Text("削除")
        }.actionSheet(isPresented: $isSheet) {
            ActionSheet(title: Text("aa"),
                        buttons: [.cancel(Text("キャンセル"), action: {}),
                                  .destructive(Text("削除"), action: {dest()})
                        ])
        }
    }
}

func dest() {
    print("aaaaa")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
