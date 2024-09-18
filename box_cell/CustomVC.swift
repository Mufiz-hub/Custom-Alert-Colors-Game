//
//  CustomVC.swift
//  box_cell
//
//  Created by Rahul Sharma on 07/09/24.
//

import UIKit

class CustomVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.isOpaque = false
        self.view.backgroundColor = .clear.withAlphaComponent(0.7)

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func okbtn(_ sender: UIButton)
    {
        self.dismiss(animated: true)
    }
    

}
