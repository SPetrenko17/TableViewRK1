//
//  ViewController.swift
//  TableViewSwift
//
//  Created by d.taraev on 14.03.2018.
//  Copyright © 2018 mail.ru. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate{
  
    @IBOutlet weak var tableView: UITableView!
    let cellIdentifier = "CustomTableViewCell"
    var modelArray = [CellModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        modelArray = titles.map{CellModel(with: $0)}
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib.init(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelArray.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if  let newnavigatorRaw = storyboard?.instantiateViewController(withIdentifier: "second") {
            if let newnavigator = newnavigatorRaw as? SecondViewController {
                newnavigator.mytitle = titles[indexPath.row]
                self.navigationController?.pushViewController(newnavigator, animated: true)
            }
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = modelArray[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        if let castedcell = cell as? CustomTableViewCell{
            castedcell.fillCell(with: model)
        }
        return cell
    }
    
}
