//
//  DetailsViewController.swift
//  SwiftWorkshop
//
//  Created by Kanitkorn Sujautra on 9/17/2559 BE.
//  Copyright © 2559 Kanitkorn. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var detailsLabel: UILabel!
    
    var myString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsLabel.text = myString
    }
}
