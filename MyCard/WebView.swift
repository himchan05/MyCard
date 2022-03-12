//
//  WebView.swift
//  MyCard
//
//  Created by 박힘찬 on 2022/03/12.
//

import SwiftUI
import WebKit
// uiKit의 uiview를 사용할 수 있도록 한다. KeyWord: Reoresentable
struct WebView: UIViewRepresentable {
    var urlToLoad: String

    // ui view 생성
    func makeUIView(context: Context) -> WKWebView {
        // unrapping
        guard let url = URL(string: urlToLoad) else {
            return WKWebView()
        }
        // 웹 뷰 인스턴스 생성
        let webview = WKWebView()
        // 웹 뷰 로드
        webview.load(URLRequest(url: url))

        return webview
    }
    // ui view 업데이트
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        //
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(urlToLoad: "https://www.naver.com")
    }
}
