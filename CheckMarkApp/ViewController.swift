//
//  ViewController.swift
//  CheckMarkApp
//
//  Created by Sanjay Mali on 22/12/16.
//  Copyright © 2016 Sanjay. All rights reserved.
//

import UIKit

class ViewController: UIViewController,BEMCheckBoxDelegate{

    @IBOutlet weak var b1: BEMCheckBox!
    @IBOutlet weak var b2: BEMCheckBox!
    @IBOutlet weak var b3: BEMCheckBox!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        b1.delegate = self
        b2.delegate = self
        b3.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
   override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        b1.setOn(true, animated: true)
    }

    func didTap(_ checkBox: BEMCheckBox) {
        if checkBox.tag == 0{
            b1.onAnimationType = .fill
            
        }
        if checkBox.tag == 1{
            b1.onAnimationType = .bounce
            
        }
        if checkBox.tag == 2{
            b1.onAnimationType = .stroke
            
        }
    }

}


