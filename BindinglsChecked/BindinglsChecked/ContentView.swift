//
//  ContentView.swift
//  BindinglsChecked
//
//  Created by 岩田照太 on 2021/02/28.
//

import SwiftUI

struct ContentView: View {
    @State var isChecked_person1: Bool = false
    
    var body: some View {
        HStack{
            Text("担当者１のチェック").padding(.horizontal, 10)
            PersonCheckMark(isChecked: $isChecked_person1)
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
