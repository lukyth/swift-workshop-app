//
//  ViewController.swift
//  SwiftWorkshop
//
//  Created by Kanitkorn Sujautra on 9/17/2559 BE.
//  Copyright © 2559 Kanitkorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    
    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    
    var text = [String]()
    
    func render() {
        myLabel.text = text.joined(separator: ",")
        myTextField.text = ""
    }

    @IBAction func myButtonPressed(sender: UIButton) {
        switch sender.tag {
        case 1:
            let textField = myTextField.text
            while text.index(of: textField!) != nil {
               text.remove(at: text.index(of: textField!)!)
            }
        default:
            text.append(myTextField.text!)
        }
        render()
    }
    
    @IBAction func navigate(sender: UIButton) {
        performSegue(withIdentifier: "1", sender: Any?.self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "home"
        render()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as? DetailsViewController
        destinationVC?.myString = text.joined()
    }
    
}

