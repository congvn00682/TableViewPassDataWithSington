//
//  ViewController.swift
//  TableViewPassDataWithSington
//
//  Created by Vu Ngoc Cong on 3/25/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dataSource = DataSource()
    
    @IBOutlet weak var dataTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataTable.dataSource = dataSource
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let index = dataTable.indexPathForSelectedRow{
            Singleton.shared.number = dataSource.arr[index.row]
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        if let index = dataTable.indexPathForSelectedRow{
            dataSource.arr[index.row] = Singleton.shared.number!
            dataTable.reloadData()
        }
    }
    
}

