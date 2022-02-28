//
//  ShareData.swift
//  EnvironmentObjectSample
//
//  Created by 岩田照太 on 2021/03/01.
//

import Foundation

//共有するデータ
class ShareData: ObservableObject {
    @Published var isOn = false
    @Published var num = 1
    @Published var aa:[Date] = []
}
