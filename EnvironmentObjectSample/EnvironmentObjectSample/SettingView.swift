//
//  SettingView.swift
//  EnvironmentObjectSample
//
//  Created by 岩田照太 on 2021/03/01.
//

import SwiftUI

struct SettingView: View {
    @State var thDate = Date()
    //共有オブジェクトを指定する
    @EnvironmentObject var setData: ShareData
    //シートが開いている状態
    @Binding var isPresented: Bool
    
    
    var dateFormat: DateFormatter {
        let df = DateFormatter()
        df.locale = Locale(identifier: "ja_JP")
        df.calendar = Calendar(identifier: .japanese)
        df.dateStyle = .full
        df.timeStyle = .full
        
        return df
    }
    
    
    var body: some View {
        NavigationView{
            VStack{
                DatePicker(selection: $thDate, label: { EmptyView()})
                    .font(.title)
                    .environment(\.locale, Locale(identifier: "ja_JP"))
                    .frame(width: 40, height: 40)

                //スイッチ
                Toggle(isOn: $setData.isOn) {
                    Text("設定:\(setData.isOn ? "ON" : "OFF")")
                }.frame(width: 250)
                //ステッパー(星の数)
                Stepper(value: $setData.num, in: 1 ... 5) {
                    Text("★ : \(setData.num)")
                }
                .frame(width: 250)
            }
            .font(.title2)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.9, green: 0.9, blue: 0.5))
            .ignoresSafeArea()  //ビュー全体を塗る
            .toolbar {
                //閉じるボタン
                Button("閉じる") {
                    setData.aa.append(thDate)
                    print(setData.aa)
                    isPresented = false
                }
            }
        }
      
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView(isPresented: Binding.constant(false))
            .environmentObject(ShareData())
    }
}
