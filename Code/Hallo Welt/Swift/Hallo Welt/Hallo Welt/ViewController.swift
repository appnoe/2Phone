//
//  ViewController.swift
//  Hallo Welt
//
//  Created by Klaus Rodewig on 04.10.14.
//  Copyright (c) 2014 Cocaneheads. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBAction func button(sender: AnyObject) {
        label.text = "Hallo Welt!"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Bitte Button drücken!"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

