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
    
    
    @IBAction func goBackFromAllPeopleScreen(with segue: UIStoryboardSegue){
        guard let AvalibleVC = segue.source as? AllPeopleTableViewController,
              let indexPath = AvalibleVC.tableView.indexPathForSelectedRow else {return}
        let newFriend = peopleListAll[indexPath.row]
        peopleListAll.remove(at: indexPath.row)
        guard !peopleListFriends.contains(where: {person -> Bool in
            person.name == newFriend.name
        }) else {return}
        
        peopleListFriends.append(newFriend)
        friendsTableView.reloadData()
    }
    
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return peopleListFriends.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as?
                FriendTableViewCell else{
            fatalError("{Message: error in dequeue FriendTableViewCell }")
        }
        cell.personImage.image = peopleListFriends[indexPath.row].imageMain
        cell.personName.text = peopleListFriends[indexPath.row].name
        return cell
    }
        
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case .delete:
            let deletedFriend = peopleListFriends[indexPath.row]
            peopleListFriends.remove(at: indexPath.row)
            peopleListAll.append(deletedFriend)
            
            tableView.deleteRows(at: [indexPath], with: .automatic)
   
        default:
            return
        }
    }

}
