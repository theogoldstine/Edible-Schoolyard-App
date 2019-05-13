//
//  ResourceWebViewController.swift
//  ESY
//
//  Created by Theo Goldstine on 4/29/19.
//  Copyright © 2019 Theo Goldstine. All rights reserved.
//


import UIKit
import WebKit

class ResourceWebViewController: UIViewController, WKUIDelegate {
    
    @IBOutlet weak var webView: WKWebView!
        
        override func loadView() {
            let webConfiguration = WKWebViewConfiguration()
            webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.uiDelegate = self
            view = webView
        }
        override func viewDidLoad() {
            super.viewDidLoad()
            
            let myURL = URL(string:"https://edibleschoolyard.org/resource-search")
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
        }}
