//
//  ContentView.swift
//  MapMarkerSample
//
//  Created by 岩田照太 on 2021/03/02.
//

import SwiftUI
import MapKit

//spotの構造体
//配列に値を入れるときにこの形で宣言する
struct Spot: Identifiable {
    let id = UUID()
    let latitude: Double
    let longtitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longtitude)
    }
}

struct ContentView: View {
    //指し示す座標
    let spotlist = [
        Spot(latitude: 35.6834843, longtitude: 139.7644207),
        Spot(latitude: 35.6790079, longtitude: 139.7675811),
        Spot(latitude: 35.6780057, longtitude: 139.7631035)
    ]
    
    
    //座標と領域を指定する
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 35.680572,      //緯度
            longitude: 139.7676359),  //経度
        latitudinalMeters: 1000.0, //南北距離
        longitudinalMeters: 1000.0 //東西距離
    )
    var body: some View {
        //地図を表示する
       Map(coordinateRegion: $region,
           annotationItems: spotlist,
           annotationContent: { spot in
            MapMarker(coordinate: spot.coordinate, tint: .orange)}
       )
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
