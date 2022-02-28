//
//  ContentView.swift
//  MapLocationManager
//
//  Created by 岩田照太 on 2021/03/02.
//

import SwiftUI
import MapKit

struct ContentView: View {
    //managerの更新を確認する
    @ObservedObject var manager = LocationManager()
    //ユーザートラッキングモード（追跡モード）
    @State var trackingMode = MapUserTrackingMode.follow
    
    
    var body: some View {
        //現在地を追跡する地図を表示する
        Map(coordinateRegion: $manager.region,
            showsUserLocation: true,
            userTrackingMode: $trackingMode)
            .edgesIgnoringSafeArea(.bottom)
          
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
