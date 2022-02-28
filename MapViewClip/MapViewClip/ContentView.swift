//
//  ContentView.swift
//  MapViewClip
//
//  Created by 岩田照太 on 2021/03/02.
//

import SwiftUI
import MapKit

struct ContentView: View {
    //座標と領域を指定する
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 35.6865702, //　緯度
            longitude: 139.7676359 // 径度)
        ),
        latitudinalMeters: 1000.0, //南北距離
        longitudinalMeters: 1000.0 //東西距離
    )
    var body: some View {
       //地図を表示する
        Map(coordinateRegion: $region)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10 ) //影の表示
            .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
