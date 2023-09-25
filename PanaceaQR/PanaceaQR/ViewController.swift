//
//  ViewController.swift
//  PanaceaQR
//
//  Created by Rex Ramza on 11/7/22.
//

import UIKit
import SwiftUI
import Combine

class ViewController: UIViewController {
    
    private var cancellable: AnyCancellable!
    let delegate = ContentViewDelegate()
    
    //Connecting the preset button to a function
    @IBAction func scanBut(_ sender: Any) {
        //Creating a host view controller to run the SwiftUI file
        let vc = UIHostingController(rootView: QRCodeScanner(delegate:delegate))
        //Presenting the SwiftUI file in the controller
        present(vc,animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cancellable = delegate.$name.sink {name in
            print(name)
        }
        
    }


}

