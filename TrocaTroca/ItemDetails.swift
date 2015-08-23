//
//  ItemDetails.swift
//  TrocaTroca
//
//  Created by Humberto  Julião on 22/08/15.
//  Copyright (c) 2015 Humberto  Julião. All rights reserved.
//

import UIKit

class ItemDetails: UIViewController {
    
    var nome, descr, categoria, genero, tamanho, condicao: String!;
    var img: UIImage!;
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var descrLabel: UITextView!
    @IBOutlet weak var categoriaLabel: UILabel!
    @IBOutlet weak var generoLabel: UILabel!
    @IBOutlet weak var tamanhoLabel: UILabel!
    @IBOutlet weak var condicaoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.title = nome;
        imgView.image = img;
        nomeLabel.text = nome;
        descrLabel.text = descr;
        categoriaLabel.text = categoria;
        generoLabel.text = genero;
        tamanhoLabel.text = tamanho;
        condicaoLabel.text = condicao;
        
        descrLabel.font = UIFont(name: "HelveticaNeue-Medium", size: 14.0);
//        descrLabel.textColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1.0);
        descrLabel.textColor = UIColor.whiteColor();
    }
    
    
    @IBAction func ofertar(sender: UIButton) {
    }
    
    @IBAction func favorite(sender: UIBarButtonItem) {
        if (sender.tag == 0) {
            sender.tag = 1;
            sender.image = UIImage(named: "Hearts Filled-50");
        } else {
            sender.tag = 0;
            sender.image = UIImage(named: "Hearts-50");
        }
    }
    
    @IBAction func back(sender: UIBarButtonItem) {
        self.navigationController?.popoverPresentationController;
    }
    
}
