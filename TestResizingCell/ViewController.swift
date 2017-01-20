//
//  ViewController.swift
//  TestResizingCell
//
//  Created by Bart van Kuik on 20/01/2017.
//  Copyright © 2017 DutchVirtual. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var items: [String] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - UITableViewDataSource, UITableViewDelegate
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as! CustomTableViewCell
        cell.expandButton.setTitle(self.items[indexPath.row], for: .normal)
        return cell
    }
    
    // MARK: - View cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        items = [
            "Allen","Upton","Hu","Yuli","Tiger","Flynn","Lev","Kyle","Sylvester","Mohammad",
            "Harlan","Julian","Sebastian","Porter","Preston","Palmer","Jakeem","Micah","Stephen","Tucker"
        ]
        
        self.tableView.estimatedRowHeight = 150
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }

}

