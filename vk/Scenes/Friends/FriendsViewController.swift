//
//  FriendsViewController.swift
//  vk
//
//  Created by Roman on 02.08.2021.
//

import UIKit

class FriendsViewController: UITableViewController {

    //MARK: - Outlets
    @IBOutlet var friendsTableView: UITableView!
    
    
    //MARK: - Properties
    private var cellID = "FriendTableViewCell"
    
    /// Масcив с людьми
    var people = [Person(name: "Danil", image: UIImage(named: "Danil")),
                  Person(name: "Pavel", image: UIImage(named: "Pavel")),
                  Person(name: "Max", image: nil),
                  Person(name: "Alex", image: nil),
                  Person(name: "Andrey", image: nil)
    ]
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return people.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as?
                FriendTableViewCell else{
            fatalError("{Message: error in dequeue FriendTableViewCell }")
        }
        cell.personImage.image = people[indexPath.row].image
        cell.personName.text = people[indexPath.row].name
        return cell
    }
        

        // Configure the cell...

    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
