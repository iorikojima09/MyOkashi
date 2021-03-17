//
//  SafariView.swift
//  MyOkashi
//
//  Created by 小島伊織 on 2021/03/16.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    //表示するホームページのURLを受ける変数
    var url: URL
    //表示するViewを生成するときに実行
    func makeUIViewController(context: Context) -> SFSafariViewController {
        //Safariを起動
        return SFSafariViewController(url: url)
    }
    
    //Viewが更新された時に実行
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        //＊＊＊＊＊＊＊あとでここに記入するところから再開
    }
}
