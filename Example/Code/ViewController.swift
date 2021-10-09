//
//  ViewController.swift
//  Example
//
//  Created by Dream on 2021/10/9.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet private weak var textLalel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.textLalel.text!)
    }
}


