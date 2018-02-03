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

class Mapview: UIViewController, MKMapViewDelegate {
    
    let mapView = MKMapView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createGUI()
        createGesture()
        mapView.delegate = self
        
        let homecoord = CLLocationCoordinate2D(latitude: 50.9504, longitude: 4.0665)
        let region = MKCoordinateRegionMakeWithDistance(homecoord, 500, 500)
        mapView.setRegion(region, animated: true)
    }
    
    func drawCircle(latitude: Double, longitude: Double, radius: Double) {
        let center = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let circle = MKCircle(center: center, radius: radius)
        mapView.add(circle)
    }
    
    func createGUI() {
        navigationItem.title = "Radius"
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mapView)
        mapView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        
        let changeRadiusButton = UIBarButtonItem(title: "Change radius", style: .plain, target: self, action: #selector(ShowChangeRadiusWindow))
        self.navigationItem.rightBarButtonItem = changeRadiusButton
    }
    
    func createGesture() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapGesture))
        view.addGestureRecognizer(tap)
    }
    
    @objc func tapGesture(_ sender: UITapGestureRecognizer) {
        let touchLocation = sender.location(in: mapView)
        let locationCoordinate = mapView.convert(touchLocation, toCoordinateFrom: mapView)
        
        drawCircle(latitude: locationCoordinate.latitude, longitude: locationCoordinate.longitude, radius: 100)
    }
    
    @objc func ShowChangeRadiusWindow() {
        let nextController = UINavigationController(rootViewController: ChangeRadius())
        self.present(nextController, animated: true, completion: nil)
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        if overlay is MKCircle {
            let circleRenderer = MKCircleRenderer(overlay: overlay)
            circleRenderer.fillColor = UIColor.blue.withAlphaComponent(0.1)
            circleRenderer.strokeColor = UIColor.blue
            circleRenderer.lineWidth = 1
            return circleRenderer
        }
        
        return MKOverlayRenderer(overlay: overlay)
    }
    
}

