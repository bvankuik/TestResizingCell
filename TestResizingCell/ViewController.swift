//
//  ViewController.swift
//  TestResizingCell
//
//  Created by Bart van Kuik on 20/01/2017.
//  Copyright © 2017 DutchVirtual. All rights reserved.
//

import UIKit

struct NameCellData {
    var name: String
    var isTextFieldHidden: Bool
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var items: [NameCellData] = []
    
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
        cell.nameLabel.text = self.items[indexPath.row].name
        cell.nameCorrectionTextField.isHidden = self.items[indexPath.row].isTextFieldHidden
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.items[indexPath.row].isTextFieldHidden = !self.items[indexPath.row].isTextFieldHidden
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    // MARK: - View cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        let names = [
            "Allen","Upton","Hu","Yuli","Tiger","Flynn","Lev","Kyle","Sylvester","Mohammad",
            "Harlan","Julian","Sebastian","Porter","Preston","Palmer","Jakeem","Micah","Stephen","Tucker"
        ]
        for name in names {
            let nameCellData = NameCellData(name: name, isTextFieldHidden: true)
            items.append(nameCellData)
        }
        
        self.tableView.estimatedRowHeight = 150
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }

}

