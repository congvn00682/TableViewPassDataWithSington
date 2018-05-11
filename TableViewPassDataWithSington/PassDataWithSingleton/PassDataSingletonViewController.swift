//
//  PassDataSingletonViewController.swift
//  TableViewPassDataWithSington
//
//  Created by Vu Ngoc Cong on 3/25/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

class Singleton{
    static let shared: Singleton = Singleton()
    var number: Int?
}

class PassDataSingletonViewController: UIViewController {

    @IBOutlet weak var txtNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtNumber.text = String(Singleton.shared.number!)
    }
    
    @IBAction func btnSingleton(_ sender: Any) {
        
        Singleton.shared.number = Int(txtNumber.text!)
        navigationController?.popViewController(animated: true)
        // dismiss(animated: true, completion: nil)
    }
    
    
    
}
