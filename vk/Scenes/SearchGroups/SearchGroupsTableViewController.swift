//
//  SearchGroupsTableViewController.swift
//  vk
//
//  Created by Roman on 08.08.2021.
//

import UIKit

class SearchGroupsTableViewController: UITableViewController {

    //MARK: - Outlets
    
    @IBOutlet var searchGroupTableView: UITableView!
    
    //MARK: - Properties
    
    private var cellID = "SeachGroupCell"

    //MARK: - Tableview
    /// Отображение и обработак ячеек таблицы и действий с ними

    /// Функция определяет количество отображаемых ячеек в таблице, зависит от количества групп
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return allGroupsList.count
    }

    
    /// Функция возвращает ячейку. Выполняется столько раз, сколько ячеек будет отображено.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        /// Определяем ячейку, которую будем заполнять данными, id ячейки берется из Storyboard
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as?
                SearchGroupTableViewCell else{
            fatalError("{Message: error in dequeue FriendTableViewCell }")
        }
        
        /// Определяем данные помещеннные в конкретную ячейку в таблице
        cell.GroupName.text = allGroupsList[indexPath.row].name
        cell.groupImage.image = allGroupsList[indexPath.row].imageMain
        return cell
    }


    
}
