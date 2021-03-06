//
//  MTableViewController.swift
//  Myrecipe
//
//  Created by comsoft on 2018. 12. 4..
//  Copyright © 2018년 comsoft. All rights reserved.
//

import UIKit


//메인요리

class MTableViewController: UITableViewController {
    
    var items = ["돼지고기김치찌개","스테이크","양념치킨","된장찌개","갈비찜","돼지갈비","소불고기","차슈라멘","낙지볶음"]
    
    var itemsUrl = [
        "https://www.menupan.com/Cook/RecipeView.asp?cookid=1581",
        "https://www.menupan.com/Cook/RecipeView.asp?cookid=883",
        "https://www.menupan.com/Cook/RecipeView.asp?cookid=102",
        "https://www.menupan.com/Cook/RecipeView.asp?cookid=1376",
        "https://www.menupan.com/Cook/RecipeView.asp?cookid=105",
        "https://www.menupan.com/Cook/RecipeView.asp?cookid=210",
        "https://www.menupan.com/Cook/CookMyKnowhow/CookMyKnowhow_View.asp?ID=83009",
        "https://www.menupan.com/Cook/CookMyKnowhow/CookMyKnowhow_View.asp?ID=103264",
        "https://www.menupan.com/Cook/RecipeView.asp?cookid=227"
    ]
    
    @IBOutlet var tvListView: UITableView!
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
        return items.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myMo", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = items[(indexPath as NSIndexPath).row]

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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "moDetail" {
            
            let cell = sender as! UITableViewCell
            let indexPath = self.tvListView.indexPath(for: cell)
     
            
            if (indexPath as NSIndexPath?)?.row == 0 {
                publicUrl = itemsUrl[0]
            }
                
            else if (indexPath as NSIndexPath?)?.row == 1 {
                publicUrl = itemsUrl[1]
            }
            else if (indexPath as NSIndexPath?)?.row == 2 {
                publicUrl = itemsUrl[2]
            }
            else if (indexPath as NSIndexPath?)?.row == 3 {
                publicUrl = itemsUrl[3]
            }
            else if (indexPath as NSIndexPath?)?.row == 4 {
                publicUrl = itemsUrl[4]
            }
            else if (indexPath as NSIndexPath?)?.row == 5 {
                publicUrl = itemsUrl[5]
            }
            else if (indexPath as NSIndexPath?)?.row == 6 {
                publicUrl = itemsUrl[6]
            }
            else if (indexPath as NSIndexPath?)?.row == 7 {
                publicUrl = itemsUrl[7]
            }
            else if (indexPath as NSIndexPath?)?.row == 8 {
                publicUrl = itemsUrl[8]
            }
            
            
        }
    }
 

}
