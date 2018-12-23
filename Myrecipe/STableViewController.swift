//
//  STableViewController.swift
//  Myrecipe
//
//  Created by comsoft on 2018. 12. 4..
//  Copyright © 2018년 comsoft. All rights reserved.
//

import UIKit

//서브요리
class STableViewController: UITableViewController {

    var items = ["시금치나물","고사리나물","강된장","멸치볶음","숙주볶음","콩나물무침","고등어조림","고구마맛탕","감자샐러드"]
    var itemsUrl = [
        "http://www.10000recipe.com/recipe/list.html?q=%EC%8B%9C%EA%B8%88%EC%B9%98%EB%82%98%EB%AC%BC",
        "http://www.10000recipe.com/recipe/list.html?q=%EA%B3%A0%EC%82%AC%EB%A6%AC%EB%82%98%EB%AC%BC",
        "http://www.10000recipe.com/recipe/list.html?q=%EA%B0%95%EB%90%9C%EC%9E%A5",
        "http://www.10000recipe.com/recipe/list.html?q=%EB%A9%B8%EC%B9%98%EB%B3%B6%EC%9D%8C",
        "http://www.10000recipe.com/recipe/list.html?q=%EC%88%99%EC%A3%BC%EB%B3%B6%EC%9D%8C",
        "http://www.10000recipe.com/recipe/list.html?q=%EC%BD%A9%EB%82%98%EB%AC%BC%EB%AC%B4%EC%B9%A8",
        "http://www.10000recipe.com/recipe/list.html?q=%EA%B3%A0%EB%93%B1%EC%96%B4%EC%A1%B0%EB%A6%BC",
        "http://www.10000recipe.com/recipe/list.html?q=%EA%B3%A0%EA%B5%AC%EB%A7%88%EB%A7%9B%ED%83%95",
        "http://www.10000recipe.com/recipe/list.html?q=%EA%B0%90%EC%9E%90%EC%83%90%EB%9F%AC%EB%93%9C"
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "mySu", for: indexPath)

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
        
        if segue.identifier == "suDetail" {
            
            let cell = sender as! UITableViewCell
            let indexPath = self.tvListView.indexPath(for: cell)
            
            
            if (indexPath as NSIndexPath?)?.row == 0 {
                publicUrl = itemsUrl[0]
            }
                
            else if (indexPath as NSIndexPath?)?.row == 1 {
                publicUrl = itemsUrl[1]
            }
            
            
        }
    }
}
