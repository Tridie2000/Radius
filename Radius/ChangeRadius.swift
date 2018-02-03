//
//  ChangeRadius.swift
//  Radius
//
//  Created by Tristan on 3/02/18.
//  Copyright © 2018 Tridie2000. All rights reserved.
//

import UIKit

class ChangeRadius: UIViewController {
    
    let radiusLabel = UILabel()
    let radiusTextField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()

        createGUI()
    }
    
    func createGUI() {
        navigationItem.title = "Change Radius"
        view.backgroundColor = UIColor.white
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(Done))
        self.navigationItem.rightBarButtonItem = doneButton
        
        radiusLabel.translatesAutoresizingMaskIntoConstraints = false
        radiusLabel.text = "Radius"
        view.addSubview(radiusLabel)
        radiusLabel.heightAnchor.constraint(equalToConstant: 10)
        radiusLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 10).isActive = true
        radiusLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 10).isActive = true
        
        radiusTextField.translatesAutoresizingMaskIntoConstraints = false
        radiusTextField.placeholder = "Type the value in meters"
        view.addSubview(radiusTextField)
        radiusTextField.heightAnchor.constraint(equalToConstant: 10)
        radiusTextField.widthAnchor.constraint(equalToConstant: 100)
        radiusTextField.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 10).isActive = true
        radiusTextField.leadingAnchor.constraint(equalTo: radiusLabel.trailingAnchor, constant: 10).isActive = true
    }
    
    @objc func Done() {
        
        if radiusTextField.text != "" {
            Mapview.radius = Double(radiusTextField.text!)!
        } else {
            Mapview.radius = 100
        }
        
        
        self.dismiss(animated: true, completion: nil)
    }


}
