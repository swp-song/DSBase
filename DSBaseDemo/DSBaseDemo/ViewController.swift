//
//  ViewController.swift
//  DSBaseDemo
//
//  Created by Dream on 2020/12/7.
//

import UIKit

import DSBase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        String.ds.test()
        "111".ds.test()
    }
}
extension DS where DSBase == String {

    static func test() -> Void {
        print(#function)
    }

    func test() -> Void {
        print(#function)
    }
}

extension String : DSCompatible { }

