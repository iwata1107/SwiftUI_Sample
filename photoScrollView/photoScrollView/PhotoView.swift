//
//  PhotoView.swift
//  photoScrollView
//
//  Created by 岩田照太 on 2021/02/27.
//

import SwiftUI

struct PhotoView: View {
    var photo:PhotoData
    let w:CGFloat = UIScreen.main.bounds.width - 20
    
    var body: some View {
        VStack{
            Image(photo.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(photo.title)
                .bold()
                .padding(.top, 10)
                .padding(.bottom, 20)
        }
        .frame(width: w)
        .background(Color(red: 0.3, green: 0.8, blue: 0.5))
        .cornerRadius(8)
    }
}

struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(photo: photoArray[0])
    }
}
