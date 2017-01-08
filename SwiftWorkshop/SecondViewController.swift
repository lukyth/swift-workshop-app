//
//  ViewController.swift
//  SwiftWorkshop
//
//  Created by Kanitkorn Sujautra on 9/17/2559 BE.
//  Copyright © 2559 Kanitkorn. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    let images: [String: UIImage] = ["1": #imageLiteral(resourceName: "ss1"), "2": #imageLiteral(resourceName: "ss2"),"3": #imageLiteral(resourceName: "ss3")]

    @IBAction func buttonTapped(_ sender: UIButton) {
        if let image = images[textField.text!] {
            imageView.image = image
        }
        textField.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as? DetailsViewController
        destinationVC?.myString = textField.text!
    }
}

