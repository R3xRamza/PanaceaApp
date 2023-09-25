//
//  ViewController.swift
//  testButton
//
//  Created by Rex Ramza on 9/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1Out: UIButton!
    @IBAction func button1(_ sender: UIButton) {
        
        print(sender.currentTitle)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button1Out.setTitle("1", for: UIControl.State())
        
    }


}

