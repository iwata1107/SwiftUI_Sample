//
//  PhotoData.swift
//  chap4
//
//  Created by 岩田照太 on 2021/02/07.
//

import Foundation

var photoArray:[PhotoData] = makeData()

struct PhotoData: Identifiable{
    var id: Int
    var imageName: String
    var title: String
}

func makeData() -> [PhotoData] {
    var dataArray:[PhotoData] = []
    dataArray.append(PhotoData(id:1, imageName:"daiju", title: "大樹"))
    dataArray.append(PhotoData(id:2, imageName:"gen", title: "ゲン"))
    dataArray.append(PhotoData(id:3, imageName:"senku", title: "千空"))
    dataArray.append(PhotoData(id:4, imageName:"tukasa", title: "司"))
    dataArray.append(PhotoData(id:5, imageName:"yuzuriha", title: "ゆずりは"))
    
    return dataArray
}
