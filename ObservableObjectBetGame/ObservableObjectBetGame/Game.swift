//
//  Game.swift
//  ObservableObjectBetGame
//
//  Created by 岩田照太 on 2021/03/01.
//

import Foundation

//Gameクラス
class Game: ObservableObject {
    @Published var bet: String
    @Published var point: Int
    @Published var getPoint: Int
    
    //イニシャライザ
    init(bet:String = "", point:Int = 50, getPoint:Int = 0){
        self.bet = bet
        self.point = point
        self.getPoint = getPoint
    }
    
    //賭けポイントのチェック
    func betCheck() {
        //かけポイントをintに変換できに時に中止する
        guard var betPoint = Int(bet) else { return }
        //賭けポイントの上限はpoint
        betPoint = min(betPoint, point)
        bet = String(betPoint)   //textFieldに表示するのでString型に戻す
    }
    
    //チャレンジ
    func challenge() {
        //かけポイントをintに変換できに時に中止する
        guard let betPoint = Int(bet) else { return }
        //チャレンジ！
        let num = Int.random(in: -3 ... 3)
        getPoint = betPoint * num
        point = point + getPoint
    }
    
    //再チャレンジ（リスタート）
    func restart() {
        bet = ""
        point = 50
        getPoint = 0
        
    }
}
