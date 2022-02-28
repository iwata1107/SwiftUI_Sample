//
//  ContentView.swift
//  Lesson4
//
//  Created by 岩田照太 on 2021/02/09.
//
import SwiftUI



struct ContentView: View {
    
    var body: some View{
        NavigationView {
            List(photoArray) {item in
                NavigationLink(destination: PhotoDetailView(photo: item)) {
                    RowView(photo: item)
                }
            }
            .navigationTitle(Text(  "写真リスト"  ))
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
