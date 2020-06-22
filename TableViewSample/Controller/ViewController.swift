//
//  ViewController.swift
//  TableViewSample
//
//  Created by Asaduzzaman Anik on 6/22/20.
//  Copyright © 2020 Asaduzzaman Anik. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    let cellReuseIdentifire = "TableCellIdentifier"
    
    //info for the table
    let numbers = [1,2,3,4,5,6,7,8,9,11,11,22,33,44,55,66,77,88,99,111,222,333,444,555,666,777,888,999]
    
    //tableview
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }


    //number of rows on the table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    //put item on each row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //create a 
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifire) as! TableViewCell
        cell.label.text = String(numbers[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Pressed \(numbers[indexPath.row])")
    }
}

