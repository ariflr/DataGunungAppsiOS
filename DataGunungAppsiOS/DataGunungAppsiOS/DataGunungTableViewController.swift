//
//  CustomCellTableViewController.swift
//  CustomCellDataView(1)
//
//  Created by arif luqman rabono on 10/19/17.
//  Copyright © 2017 arif luqman rabono. All rights reserved.
//

import UIKit

class DataGunungTableViewController: UITableViewController {
    
    let category:[String] = ["Gunung Gede","Gunung Pangrango","Gunung Papadayan","Gunung Cikuray","Gunung Ciremai"]
    let tanggaltglData : [String] = ["Gunung Gede adalah salah satu gunung paling mainstream di Jawa Barat. Gunung ini punya seribu satu daya pikat yang bisa membuat para pendaki betah berlama-lama diatas dan enggan turun. Selain menawarkan pemandangan ciamik di puncak, Gunung Gede juga punya tempat yang menjadi salah satu daya tarik utama yakni Alun-alun Suryakencana","Di Taman Nasional Gunung Gede Pangrango, selain bisa mendaki Gunung Gede kamu juga bisa mendaki Gunung Pangrango yang juga memiliki pesona yang tak kalah menarik. Sama seperti Gunung Gede, Gunung Pangrango juga memiliki padang rumput luas yang ditumbuhi oleh bunga-bunga edelweis. Namanya adalah Lembah Mandalawangi", "Gunung lain yang menjadi tempat favorite pada pendaki di Jawa Barat untuk melakukan pendakian adalah Gunung Papandayan. Gunung ini berada di Kabupaten Garut dan dikenal memiliki beberapa kawah seperti Kawah Mas, Kawah Baru, Kawah Nangklak, dan Kawah Manuk","Kabupaten Garut merupakan salah satu daerah kesukaan para pendaki di Jawa Barat karna disana terdapat beberapa Gunung yang bisa didaki. Selain Gunung Papandayan, ada gunung lain yang juga menjadi tujuan favorite pendaki di Jawa Barat yang lokasinya ada kabupaten Garut. Nama gunungnya adalah Gunung Cikuray","Gunung Ciremai merupakan gunung paling tinggi yang ada di Jawa Barat. Tinggi gunung ini mencapai 3.078 mdpl. Maka tak heran kalau banyak pendaki di Jawa Barat yang menjadikan gunung ini sebagai salah satu gunung impian"]
    
    let gambarBerita : [String] = ["gununggede.jpg","gunungpang.jpg","gunungpapa.jpg","gunungci.jpg","gunungcire.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
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
        return  category.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
            
    tableView.dequeueReusableCell(withIdentifier: "cellBerita", for: indexPath) as! DtailTableViewCell
        
        // Configure the cell...
        
        cell.namaGunung.text = category[indexPath.row]
        cell.Detail.text =
             tanggaltglData[indexPath.row]
        
        
        //        let dataImage :UIImage = UIImage(named: gambarBerita[indexPath.row])!
        //        cell.imgGambar.image = dataImage
        
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

