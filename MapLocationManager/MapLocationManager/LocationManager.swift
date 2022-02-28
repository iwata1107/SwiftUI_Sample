//
//  LocationManager.swift
//  MapLocationManager
//
//  Created by 岩田照太 on 2021/03/02.
//

import MapKit

//現在地を取得するためのクラス　　　　　　↓現在地の観測       ↓位置追跡のデリゲート
class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    //ロケーションマネージャーを作る
    let manager = CLLocationManager()
    //領域の更新をパブリッシュする
    @Published var region = MKCoordinateRegion()
    
    override init() {
        super.init()
        manager.delegate = self //デリゲートの設定
        manager.requestWhenInUseAuthorization() //プライバシー設定の確認
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.distanceFilter = 2 //更新距離
        manager.startUpdatingLocation() //追跡を開始します
    }
    
    //領域の更新
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        //Locationsの最後の要素に対して実行する
        locations.last.map {
            let center = CLLocationCoordinate2D(
                latitude: $0.coordinate.latitude,
                longitude: $0.coordinate.longitude)
            
            //領域の更新
            region = MKCoordinateRegion(
                center: center,
                latitudinalMeters: 1000.0,
                longitudinalMeters: 1000.0
            )
        }
    }
}
