//
//  ViewController.swift
//  Radius
//
//  Created by Tristan on 31/01/18.
//  Copyright © 2018 Tridie2000. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    let mapView = MKMapView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createGUI()
        createGesture()
        
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
        print("tap ok")
    }
    
}

