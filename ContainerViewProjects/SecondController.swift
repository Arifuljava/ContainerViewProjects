//
//  SecondController.swift
//  ContainerViewProjects
//
//  Created by sang on 12/10/1444 AH.
//

import UIKit
import WebKit

class SecondController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var webview: WKWebView!
    let activityIndicator = UIActivityIndicatorView(style: .whiteLarge)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.startAnimating()
        webview = WKWebView()
        webview.navigationDelegate = self
        self.view = webview
        let loadURL = "https://www.patreon.com/iosacademy"
        let url = URL(string: loadURL)!
        webview.load(URLRequest(url: url))
        activityIndicator.stopAnimating()
        webview.allowsBackForwardNavigationGestures = true
        


    }
    

    

}


extension ViewController : WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
    }
}
