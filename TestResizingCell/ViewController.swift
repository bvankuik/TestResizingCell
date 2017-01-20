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
        
        NSLog("self.size=\(self.size)")
        
        cell.nameLabel.text = self.items[indexPath.row]
        
        return cell
    }
    
    // MARK: - View cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        items = [
            "Allen","Upton","Hu","Yuli","Tiger","Flynn","Lev","Kyle","Sylvester","Mohammad",
            "Harlan","Julian","Sebastian","Porter","Preston","Palmer","Jakeem","Micah","Stephen","Tucker",
            "Abbot","Caldwell","Steven","Gannon","Kasper","Jerome","Samson","Grant","Calvin","Nero",
            "Igor","Roth","Abbot","Devin","Geoffrey","Ryan","Tobias","Oliver","Elton","Ivan",
            "Plato","Kevin","Dustin","Harrison","Galvin","Gannon","Reece","Price","Maxwell","Rashad",
            "Cooper","Aristotle","Dieter","Abraham","Louis","Akeem","Gary","Kamal","Hasad","Lance",
            "Calvin","Lester","Thaddeus","Flynn","Silas","Lev","Carl","Harper","Drake","Travis",
            "Herrod","Austin","Howard","Martin","Oscar","Ignatius","Wing","Howard","Justin","Dexter",
            "Tucker","Alec","Hector","Hayes","Murphy","Wallace","Brandon","Gage","Dillon","Aquila",
            "Cullen","Ivan","Brendan","Basil","Harrison","Zeph","George","Dylan","Bernard","Gary",
        ]
        
        self.tableView.estimatedRowHeight = 150
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }

}

