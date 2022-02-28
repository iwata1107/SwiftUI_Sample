//
//  ContentView.swift
//  TextFieldSample
//
//  Created by 岩田照太 on 2021/02/19.
//

import SwiftUI

struct ContentView: View {
    @State var kosu: String = ""
    let tanka: Double = 250
    let tax: Double = 1.1

    
    var body: some View {
        VStack{
        HStack{
            Text("個数:").padding(.horizontal,0)
            TextField("0", text: $kosu)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 100)
        }
        .font(.title)
        .frame(width: 200)
        
        //計算結果の表示
        Group {
            if kosucheck(min: 1, max: 10) {
                Text("\(price())円です")
                
            }
            else {
                Text("個数は1~10個入れてください")
            }
        }.frame(width: 300)
            
        }
    }


func kosucheck(min: Int, max: Int) -> Bool {
    guard let num = Int(kosu) else {
       return false
    }
    return (min ... max).contains(num)
}

func price() -> Int {
    if let num = Double(kosu) {
       let result = Int(tanka * tax * num)
        return result
    }else{
        return -1
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
 }
}
