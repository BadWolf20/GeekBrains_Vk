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
    /// Масcив с людьми
    var people = [Person(name: "Benji", image: nil),
                  Person(name: "Artem", image: nil),
                  Person(name: "Adam", image: nil),
                  Person(name: "Omar", image: nil),
                  Person(name: "Kirill", image: nil),
                  Person(name: "Kyle", image: nil),
                  Person(name: "Vlad", image: nil)
    ]
                  
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return people.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: allPeopleID, for: indexPath) as?
                FriendTableViewCell else{
            fatalError("{Message: error in dequeue FriendTableViewCell }")
        }
        cell.personImage.image = people[indexPath.row].image
        cell.personName.text = people[indexPath.row].name
        return cell
    }
    
}
