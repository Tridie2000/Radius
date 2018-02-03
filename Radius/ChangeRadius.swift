//
//  ChangeRadius.swift
//  Radius
//
//  Created by Tristan on 3/02/18.
//  Copyright © 2018 Tridie2000. All rights reserved.
//

import UIKit

class ChangeRadius: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        createGUI()
    }
    
    func createGUI() {
        navigationItem.title = "Change Radius"
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(Done))
        self.navigationItem.rightBarButtonItem = doneButton
    }
    
    @objc func Done() {
        self.dismiss(animated: true, completion: nil)
    }


}
