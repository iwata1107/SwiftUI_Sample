//
//  ContentView.swift
//  TabViewSample
//
//  Created by 岩田照太 on 2021/02/28.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTag = 1
    
    var body: some View {
        TabView(selection: $selectedTag) {
            HomeTabView()/*
                .tabItem { Image(systemName: "house")
                Text("Home") }*/
                .tag(1)
            WeatherTabView()/*
                .tabItem { Image(systemName: "cloud.sun")
                Text("お天気") }*/
                .tag(2)
            NewsTabView()/*
                .tabItem { Image(systemName: "newspaper")
                Text("ニュース") }*/
                .tag(3)
        }
        .tabViewStyle(PageTabViewStyle())
        .ignoresSafeArea()
    }
}

struct HomeTabView: View {
    var body: some View {
        VStack{
            Image(systemName: "music.note.house")
                .scaleEffect(x:3,y:3)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Text("ホーム")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.5, green: 0.9, blue: 0.9))
    }
}

struct WeatherTabView: View {
    var body: some View {
        VStack{
            Image(systemName: "cloud.sun")
                .scaleEffect(x:3,y:3)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Text("天気")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.6, green: 0.6, blue: 1.0))
    }
}

struct NewsTabView: View {
    var body: some View {
        VStack{
            Image(systemName: "newspaper")
                .scaleEffect(x:3,y:3)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                Text("ニュース")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.9, green: 0.9, blue: 0.8))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        HomeTabView()
        WeatherTabView()
        NewsTabView()
    }
}
