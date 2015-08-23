//
//  ItemPlaceTVC.swift
//  TrocaTroca
//
//  Created by Humberto  Julião on 22/08/15.
//  Copyright (c) 2015 Humberto  Julião. All rights reserved.
//

import UIKit

class ItemPlaceTVC: UITableViewController {
    var vetProdName:[String] = []
    var descricao:[String] = []
    var locais:[String] = []
    var imagens:[String] = []
    var categorias: [String] = []
    var generos: [String] = []
    var tamanhos: [String] = []
    
    var background: UIView!
    
    var didAnimate = false;

    override func viewDidLoad() {
        super.viewDidLoad()
        
        background = UIView(frame: self.view.frame);
        background.backgroundColor = UIColor(red: 21/255, green: 145/255, blue: 136/255, alpha: 1.0);
        self.view.addSubview(background);
        
        vetProdName = ["Salto alto muito desconfortável", "Bolsa qualquer sem marca", "Camiseta da Organização StartupWeekend"]
        descricao = ["É um salto definitivamente alto.","É uma bolsa maravilhosamente sem marca.", "Camisa da Organização StartupWeekend, direto do evento!!!"]
        locais = ["São Paulo, SP","São Paulo, SP", "São Paulo, SP"]
        imagens = ["saltoalto", "bolsa", "organizacao"]
        categorias = ["Calçados", "Acessório", "Agasalhos"]
        generos = ["Feminino", "Feminino", "Unissex"]
        tamanhos = ["36", "37", "M"]
    }
    
    override func viewDidAppear(animated: Bool) {
        if (!didAnimate) {
            didAnimate = true;
            let ttIcon = UIImageView(frame: CGRect(x: self.view.center.x/1.5, y: self.view.center.y/4, width: 100, height: 100));
            ttIcon.image = UIImage(named: "trocatrocaIcon");
            ttIcon.alpha = 0.0;
            self.view.addSubview(ttIcon);
            let ttLogo = UIImageView(frame: CGRect(x: self.view.center.x/1.5, y: self.view.center.y/4, width: 250, height: 100));
            ttLogo.image = UIImage(named: "trocatrocaLogo");
            ttLogo.alpha = 0.0;
            self.view.addSubview(ttLogo);
            UIView.animateWithDuration(1.5, animations: { () -> Void in
                ttIcon.alpha = 1.0;
                }) { (finished) -> Void in
                    UIView.animateWithDuration(1.0, animations: { () -> Void in
                        ttIcon.alpha = 0.0;
                    });
                    UIView.animateWithDuration(2.5, animations: { () -> Void in
                        ttLogo.alpha = 1.0;
                        ttLogo.transform = CGAffineTransformMakeTranslation(-50, 0);
                        }) { (finished) -> Void in
                            UIView.animateWithDuration(1.0, animations: { () -> Void in
                                ttLogo.alpha = 0.0;
                                self.background.alpha = 0.0;
                            })
                    }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return vetProdName.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ItemCell", forIndexPath: indexPath) as! ItemTVC
        cell.nome.text = vetProdName[indexPath.row]
        cell.local.text = locais[indexPath.row]
        cell.img.image = UIImage(named: imagens[indexPath.row])

        // Configure the cell...

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("itemDetailsSegue", sender: indexPath);
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "itemDetailsSegue") {
            let itemDetails = segue.destinationViewController as! ItemDetails;
            itemDetails.nome = vetProdName[(sender as! NSIndexPath).row];
            itemDetails.descr = descricao[(sender as! NSIndexPath).row];
            itemDetails.categoria = categorias[(sender as! NSIndexPath).row];
            itemDetails.img = UIImage(named: imagens[(sender as! NSIndexPath).row]);
            itemDetails.genero = "Gênero: " + generos[(sender as! NSIndexPath).row];
            itemDetails.tamanho = "Tamanho: " + tamanhos[(sender as! NSIndexPath).row];
            itemDetails.condicao = "Estado: Usado";
        }
    }

}
