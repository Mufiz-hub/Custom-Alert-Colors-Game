//
//  ViewController.swift
//  box_cell
//
//  Created by Rahul Sharma on 07/09/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mytextfield: UITextField!
    
    func Alert()
    {
        let alert = UIAlertController(title: "Error!", message: "Number is less than 10", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Mainbtn(_ sender: UIButton)
    {
       
        if let txt = mytextfield.text,Int(txt) ?? 0 >= 10 && Int(txt) ?? 0 <= 15{
            
            
            let vc = storyboard?.instantiateViewController(withIdentifier: "CellVC") as! CellVC
            vc.datapass = Int(txt) ?? 0
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else
        {
            let vc = storyboard!.instantiateViewController(withIdentifier: "CustomVC") as! CustomVC
                   
            vc.modalPresentationStyle = .overFullScreen
                   
            self.navigationController?.present(vc, animated: true)
        }
    
      
    }
    
}

