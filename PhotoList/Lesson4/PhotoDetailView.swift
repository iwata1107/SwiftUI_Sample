//
//  PhotoDetailView.swift
//  Lesson4
//
//  Created by 岩田照太 on 2021/02/09.
//

import SwiftUI

struct PhotoDetailView: View {
    var photo: PhotoData
    
    var body: some View {
        VStack{
            Image(photo.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(photo.title)
            Spacer()
        }
        .padding()
        //タイトル　遷移後に表示される
        .navigationTitle(Text(verbatim: photo.title))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PhotoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailView(photo: photoArray[0])
    }
}
