//
//  WebView.swift
//  e3ex
//
//  Created by Default User on 2/17/24.
//

import UIKit
import WebKit

class WebView: UIViewController, WKNavigationDelegate {
    
    @IBOutlet var webViewUIElement: WKWebView!
    @IBOutlet var activityUIElement: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let urlAddress = URL(string: "https://www.google.ca")
        let url = URLRequest(url: urlAddress!)
        webViewUIElement.load(url)
        webViewUIElement.navigationDelegate = self
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        activityUIElement.isHidden = false
        activityUIElement.stopAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityUIElement.isHidden = true
        activityUIElement.stopAnimating()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
