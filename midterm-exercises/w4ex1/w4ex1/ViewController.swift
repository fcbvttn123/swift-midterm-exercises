//
//  ViewController.swift
//  w4ex1
//
//  Created by Default User on 2/18/24.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate, WKNavigationDelegate {
    
    @IBOutlet var webViewUIElement: WKWebView!
    @IBOutlet var activityUIElement: UIActivityIndicatorView!
    @IBOutlet var labelUIElement: UILabel!
    @IBOutlet var fNameTextField: UITextField!
    @IBOutlet var lNameTextField: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        activityUIElement.isHidden = false
        activityUIElement.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityUIElement.isHidden = true
        activityUIElement.stopAnimating()
    }
    
    func updateLabel() {
        let firstName = fNameTextField.text ?? ""
        let lastName = lNameTextField.text ?? ""
        labelUIElement.text = firstName + lastName
    }
    
    @IBAction func formSubmission(_sender: Any) {
        let alert = UIAlertController(title: "Warning", message: "Are you sure?", preferredStyle: .alert)
        
        let yesAction = UIAlertAction(title: "Yes", style: .default, handler: {(alert: UIAlertAction!) in
            self.updateLabel()
            self.dismiss(animated: true)
        })
        
        let noAction = UIAlertAction(title: "No", style: .cancel)
        
        alert.addAction(yesAction)
        alert.addAction(noAction)
        
        present(alert, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if(UIDevice.current.userInterfaceIdiom == .pad) {
            let urlAddress = URL(string: "https://www.google.ca")
            let url = URLRequest(url: urlAddress!)
            webViewUIElement.load(url)
            webViewUIElement.navigationDelegate = self
        } else {
            webViewUIElement.isHidden = true
            activityUIElement.isHidden = true
        }
    }


}

