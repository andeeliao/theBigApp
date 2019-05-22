//
//  ViewController.swift
//  PocketKevinLau
//
//  Created by xue qi liao on 5/21/19.
//  Copyright © 2019 xue qi liao. All rights reserved.
//

import UIKit
import WebKit

class AmazingViewController: UIViewController {
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let theBigURL = URL(string: "http://xeniatay.com/thebigone/") else { return }
        let bigRequest = URLRequest(url: theBigURL)
        webView.load(bigRequest)
    }


}

extension AmazingViewController: WKUIDelegate {
    
}
