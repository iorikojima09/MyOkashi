//
//  ContentView.swift
//  MyOkashi
//
//  Created by 小島伊織 on 2021/03/13.
//

import SwiftUI

struct ContentView: View {
    //Okashidataを参照する状態変数
    @ObservedObject var okashiDataList = OkashiData()
    //入力された文字列を保持する状態変数
    @State var inputText = ""
    
    var body: some View {
        VStack {
            TextField("キーワードを入力してください", text: $inputText , onCommit: {
                //入力完了直後に検索する
                okashiDataList.serchOkashi(keyword: inputText)
            })
            //上下左右に余白を合わせる
            .padding()
            //リスト表示する
            List(okashiDataList.okashiList) { okashi in
                //okashiに要素を追加して、List（一覧）を生成する
                //水平にレイアウト（横方向にレイアウト）
                HStack {
                    //画像を表示する
                    Image(uiImage: okashi.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 40)
                    //テキストを表示する
                    Text(okashi.name)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//テストメッセージ
