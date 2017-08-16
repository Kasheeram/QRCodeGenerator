//
//  ViewController.swift
//  GRGeneraterAndReader
//
//  Created by Apogee on 8/14/17.
//  Copyright © 2017 Apogee. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,AVCaptureMetadataOutputObjectsDelegate {
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myImageView: UIImageView!
    
    var video = AVCaptureVideoPreviewLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    

    @IBAction func button(_ sender: Any) {
        if let myString = myTextField.text{
            let data = myString.data(using: .ascii, allowLossyConversion: false)
            let filter = CIFilter(name:"CIQRCodeGenerator")
            filter?.setValue(data, forKey: "inputMessage")
            let img = UIImage(ciImage:(filter?.outputImage)!)
            myImageView.image = img
        }
    }

}

