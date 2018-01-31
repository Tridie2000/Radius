//
//  ViewController.swift
//  Radius
//
//  Created by Tristan on 31/01/18.
//  Copyright © 2018 Tridie2000. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    let mapView = MKMapView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createGUI()
        createGesture()
        
        let homecoord = CLLocationCoordinate2D(latitude: 50.9504, longitude: 4.0665)
        let region = MKCoordinateRegionMakeWithDistance(homecoord, 500, 500)
        mapView.setRegion(region, animated: true)
    }
    
    func drawCircle(latitude: CGFloat, longitude: CGFloat, radius: CGFloat) {
        
    }
    
    func createGUI() {
        navigationItem.title = "Radius"
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mapView)
        mapView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    func createGesture() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapGesture))
        view.addGestureRecognizer(tap)
    }
    
    @objc func tapGesture(_ sender: UITapGestureRecognizer) {
        
    }
    
}

