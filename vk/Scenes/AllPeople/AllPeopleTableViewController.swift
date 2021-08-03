//
//  AllPeopleTableViewController.swift
//  vk
//
//  Created by Roman on 03.08.2021.
//

import UIKit

class AllPeopleTableViewController: UITableViewController {

    //MARK: - Outlets
    @IBOutlet var peopleListTable: UITableView!
    
    //MARK: - Properties
    private let allPeopleID = "allPeopleID"
          
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return peopleListAll.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: allPeopleID, for: indexPath) as?
                FriendTableViewCell else{
            fatalError("{Message: error in dequeue FriendTableViewCell }")
        }
        cell.personImage.image = peopleListAll[indexPath.row].imageMain
        cell.personName.text = peopleListAll[indexPath.row].name
        return cell
    }
    
}
