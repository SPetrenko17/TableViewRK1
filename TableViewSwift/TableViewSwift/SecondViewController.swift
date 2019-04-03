//
//  SecondViewController.swift
//  TableViewSwift
//
//  Created by Sergei Petrenko on 03/04/2019.
//  Copyright © 2019 mail.ru. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

     var mytitle: TitleData? = nil

    @IBOutlet weak var myTextView: UITextView!
    @IBOutlet var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextView.text = mytitle?.description
        myImageView.image = UIImage(named: (mytitle?.file)!)
    }
  
    


}
