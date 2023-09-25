//
//  ViewController.swift
//  Panacea
//
//  Created by Rex Ramza on 8/29/22.
//  Copyright © 2022 Rex Ramza. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit
import UserNotifications


class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var mapView: MKMapView!

    
    @IBAction func dragMenu(_ sender: Any) {
        performSegue(withIdentifier: "panSeg", sender: nil)
    }
    
    public func zoomLoc(locationPin: CLLocationCoordinate2D) {
        mapView.setRegion(MKCoordinateRegion(center: locationPin, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)), animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        LocationManager.shared.getUserLocation { [weak self] location in
            DispatchQueue.main.async {
                guard let strongSelf = self else{
                    return
                }
                strongSelf.mapView.setRegion(MKCoordinateRegion(center: location.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)), animated: true)

            }
        }
        
        mapView.showsUserLocation = true
        
        
    }

    
}
