//
//  HeaderTableViewController.swift
//  YemekTarifiApp
//
//  Created by Halil Özel on 23.07.2018.
//  Copyright © 2018 Halil Özel. All rights reserved.
//

import UIKit

class HeaderTableViewController: UITableViewController {
    
    let headerArray = ["Mercimek Çorbası",
                       "Tavuk Şiş",
                       "Bulgur Pilavı",
                       "Ayran",
                       "Çoban Salata",
                       "Künefe"]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableFooterView = UIView() // cell kadar göster diğerlerini ekranda gösterme
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return headerArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell", for: indexPath) as! HeaderTableViewCell
        
        let rowNumber = indexPath.row
        
        cell.headerText.text = headerArray[rowNumber]
        
        return cell
    }
    
    
    
    // cell'e tıklanınca açılmasına yarayan yapı
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let rowNumber = indexPath.row
       
       
        
        // bir sonraki sayfaya geçmeye yarar.
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ReadRecipeStoryboardID") as! ReadRecipeViewController
        
         vc.selectedRow = rowNumber
        
        vc.title = headerArray[rowNumber] // title güncelle
        
        self.show(vc, sender: nil)
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

  
}
