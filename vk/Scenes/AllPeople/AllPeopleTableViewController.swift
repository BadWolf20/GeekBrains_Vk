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
          
    
    //MARK: - Tableview
    /// Отображение и обработак ячеек таблицы и действий с ними

    /// Функция определяет количество отображаемых ячеек в таблице, зависит от количества людей в общем списке
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peopleListAll.count
    }

    
    /// Функция возвращает ячейку. Выполняется столько раз, сколько ячеек будет отображено.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        /// Определяем ячейку, которую будем заполнять данными, id ячейки берется из Storyboard
        guard let cell = tableView.dequeueReusableCell(withIdentifier: allPeopleID, for: indexPath) as?
                FriendTableViewCell else{
            fatalError("{Message: error in dequeue FriendTableViewCell }")
        }
        
        /// Определяем данные помещеннные в конкретную ячейку в таблице
        cell.personImage.image = peopleListAll[indexPath.row].imageMain
        cell.personName.text = peopleListAll[indexPath.row].name
        return cell
    }
    
}
