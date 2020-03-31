//
//  ViewController.swift
//  Counter
//
//  Created by Hintoro on 3/31/20.
//  Copyright © 2020 Hintoro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblCounter: UILabel!
    
    var counter: Int = 0 {
        didSet {
            lblCounter.text = "\(counter)"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Reset", style: .plain, target: self, action: #selector(addTapped))

    }
    
    @objc func addTapped() {
        print("Tap")
        counter = 0
    }

    func incrementCounter() {
        counter += 1
    }
    
    @IBAction func tapCounterButton(_ sender: Any) {
        self.incrementCounter()
    }

}

