//
//  ItemDetails.swift
//  TrocaTroca
//
//  Created by Humberto  Julião on 22/08/15.
//  Copyright (c) 2015 Humberto  Julião. All rights reserved.
//

import UIKit

class ItemDetails: UIViewController {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var descr: UITextView!
    @IBOutlet weak var categoria: UILabel!
    @IBOutlet weak var genero: UILabel!
    @IBOutlet weak var tamanho: UILabel!
    @IBOutlet weak var nU: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad();
    }
    
    
    @IBAction func ofertar(sender: UIButton) {
    }
    
    
    @IBAction func back(sender: UIBarButtonItem) {
        self.navigationController?.popoverPresentationController;
    }
    
}
