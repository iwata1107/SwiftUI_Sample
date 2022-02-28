//
//  ContentView.swift
//  photoScrollView
//
//  Created by 岩田照太 on 2021/02/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            LazyVStack(alignment: .center, spacing: 20) {
                ForEach(photoArray) { PhotoData in
                    PhotoView(photo: PhotoData)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
