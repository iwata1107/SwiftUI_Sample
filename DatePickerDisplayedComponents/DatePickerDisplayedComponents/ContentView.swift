//
//  ContentView.swift
//  DatePickerDisplayedComponents
//
//  Created by 岩田照太 on 2021/02/19.
//

import SwiftUI

struct ContentView: View {
    @State var thDate = Date()
    
    var body: some View {
        VStack{
            //日付ピッカー
            DatePicker("日付", selection: $thDate, displayedComponents: .date)
                .environment(\.locale, Locale(identifier: "ja_JP"))
                .frame(width: 200)
            //時刻ピッカー
            DatePicker("時刻", selection: $thDate, displayedComponents: .hourAndMinute)
                .frame(width: 200)
                //ピッカーで選択している日時
            Text(thDate.description(with: Locale(identifier: "ja_JP")))
        }
        .padding()
        .border(Color.gray, width: 1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
