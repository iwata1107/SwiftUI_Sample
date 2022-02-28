//
//  EnvironmentObjectSampleApp.swift
//  EnvironmentObjectSample
//
//  Created by 岩田照太 on 2021/03/01.
//

import SwiftUI

@main
struct EnvironmentObjectSampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(ShareData())
        }
    }
}
