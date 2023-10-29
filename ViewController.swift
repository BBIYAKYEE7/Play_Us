//
//  ViewController.swift
//  Play_Us(iOS)
//
//  Created by Jaeyoon Kim on 10/29/23.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    let Webview = WKWebView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view .addSubview(Webview)
        
        guard let url = URL(string: "https://play-us.netlify.app/") else{
            return
        }
        Webview.load(URLRequest(url: url))
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        Webview.frame = view.bounds
    }
    
}

