//
//  GameView.swift
//  ObservableObjectBetGame
//
//  Created by 岩田照太 on 2021/03/01.
//

import SwiftUI

//GameViewビュー
struct GameView: View {
    //観測するオブジェクト
    @ObservedObject var player: Game
    
    var body: some View {
        //インスタンスのプロパティを変更する
        VStack(alignment: .leading, spacing: 15){
            TextField("賭けポイント", text: $player.bet)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .onChange(of: player.bet, perform: { value in
                    player.betCheck()
                })
            Text("獲得ポイント") +
            Text("\(player.getPoint)").font(.title)
            //ポイントが正しい時にチャレンジできる
            if player.point > 0 {
                Button("チャレンジ！") {
                    player.challenge()
                }.padding()
            } else {
                Text("マイナスです！！").foregroundColor(.red)
                Button("[再チャレンジする]") {
                    player.restart()
                }.foregroundColor(.red).padding()
            }
            
        }.padding()
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            GameView(player: Game(bet: "30", point: 100))
            GameView(player: Game(bet: "", point: -30))
        }
    }
}
