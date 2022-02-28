//
//  ContentView.swift
//  LinkURLsample
//
//  Created by 岩田照太 on 2021/02/11.
//

import SwiftUI

struct webData: Identifiable{
    var id = UUID()
    var name: String
    var url: String
    var favicon: String
}

struct ContentView: View {
   
    let webList = [
        webData(name: "アップル", url: "http://www.apple.com/jp/", favicon: "apple"),
                webData(name: "東京国立博物館", url: "http://www.tnm.jp", favicon: "tnm"),
                webData(name: "東京都現代博物館", url: "http://www.mot-art-museum.jp", favicon: "mo"),
                webData(name: "川崎水族館", url: "http://kawa-sui.com", favicon: "kawa-sui")
    ]

var body: some View{
    NavigationView{
        List (webList) {item in
            Image(item.favicon).resizable().frame(width: 40, height: 40)
            
            Link(item.name, destination: URL(string: item.url)!)
        }
        .navigationBarTitle("Webリスト")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
