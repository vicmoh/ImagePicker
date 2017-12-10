//
//  ViewController.swift
//  ImagePicker
//
//  Created by Vicky Mohammad on 2016-12-27.
//  Copyright © 2016 Vicky Mohammad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }//view

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }//memory
    
    @IBAction func pickImageButton(_ sender: Any) {
                let nextController = UIImagePickerController()
        self.present(nextController, animated: true, completion: nil)
    }//end pick image func
    
    @IBAction func activityView(_ sender: Any) {
        let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.present(controller, animated: true, completion: nil)
    }//end activity view
    
    @IBAction func AlertAction(_ sender: Any) {
        let controller = UIAlertController()
        controller.title = "Test Alert!"
        controller.message = "This is a test!"
        
        let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.default) {
            action in self.dismiss(animated: true, completion: nil)
        }//end ok action
        
        controller.addAction(okAction)
        self.present(controller, animated: true, completion: nil)
        
    }//end alert action
}//class

