//
//  TestTVC.swift
//  Panacea
//
//  Created by Rex Ramza on 9/14/22.
//  Copyright © 2022 Rex Ramza. All rights reserved.
//

import UIKit
import MapKit

class TestTVC: UITableViewCell {


    @IBOutlet weak var testButtonID: UIButton!
    @IBOutlet weak var testView: UIView!
    @IBOutlet weak var testImg: UIImageView!
    @IBOutlet weak var testLabel: UILabel!
    @IBAction func testButton() {
        ViewController().zoomLoc(locationPin: CLLocationCoordinate2D(latitude: 0.01, longitude: 0.1))
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
