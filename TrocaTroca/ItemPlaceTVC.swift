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

    override func viewDidLoad() {
        super.viewDidLoad()
        vetProdName = ["Casaco Azul GreatLand","Blusão da Universidade de Pisa", "Camiseta da Organização StartupWeekend"]
        descricao = ["Casaco Azul original da marca GreatLand, em perfeito estado","Casaco Azul original da Universidade de Pisa, em perfeito estado", "Camisa da Organização StartupWeekend, direto do evento!!!"]
        locais = ["São Paulo, SP","São Paulo, SP", "São Paulo, SP"]
        imagens = ["coat","blusao", "organizacao"]
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        
        
        var cell = tableView.dequeueReusableCellWithIdentifier("ItemCell")
        cell = UITableViewCell(style: <#UITableViewCellStyle#>, reuseIdentifier: <#String?#>)
        item.img.image = UIImage(named: imagens[indexPath.row])
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
