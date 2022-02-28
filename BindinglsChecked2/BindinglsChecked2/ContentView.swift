//
//  ContentView.swift
//  BindinglsChecked2
//
//  Created by 岩田照太 on 2021/02/28.
//

import SwiftUI

struct ContentView: View {
    
    @State var isCheck_person1: Bool = false
    @State var isCheck_person2: Bool = false
    
    var body: some View {
        VStack{
            HStack {
                Text("担当者1のチェック")
                PersonCheckMark (isChecked: $isCheck_person1)
            }
            HStack {
                Text("担当者2のチェック")
                PersonCheckMark (isChecked: $isCheck_person2)
            }
            
            if isCheck_person1 && isCheck_person2 {
                Text("全員チェック済み")
                    .foregroundColor(.blue)
                    .padding()
            } else {
                Text("チェック待ち")
                    .foregroundColor(.red)
                    .padding()
            }
        }
    }
}

struct PersonCheckMark: View {
    @Binding var isChecked: Bool
    
    var body: some View {
        Button(action: {
                isChecked.toggle()
        }) {
            Image(systemName: isChecked ?
                    "person.crop.circle.badge.checkmark" :
                    "person.crop.circle")
                .foregroundColor(isChecked ? .blue : .gray)
        }
        .scaleEffect(CGSize(width: 2.0, height: 2.0))
        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
