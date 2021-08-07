//
//  MyGroupsViewController.swift
//  vk
//
//  Created by Roman on 04.08.2021.
//

import UIKit

class MyGroupsViewController: UITableViewController {
    
    //MARK: - Outlets
    
    @IBOutlet var myGroupsTableView: UITableView!
    
    
    
    //MARK: - Properties
    
    private var cellID = "MyGroupsCell"
    
    
    //MARK: - Functions
    
    /// Функция которая вызываетя при возвращении из общего списка
  //  @IBAction func goBackFromAllGroupsScreen(with segue: UIStoryboardSegue){
        
//        /// Передачач переменной из вью выхода (общего списка)
//        guard let AvalibleVC = segue.source as? AllPeopleTableViewController,
//              let indexPath = AvalibleVC.tableView.indexPathForSelectedRow else {return}

    
    
    
    //MARK: - Tableview
    /// Отображение и обработак ячеек таблицы и действий с ними

    /// Функция определяет количество отображаемых ячеек в таблице, зависит от количества друзей
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return myGroupsList.count
    }

    
    /// Функция возвращает ячейку. Выполняется столько раз, сколько ячеек будет отображено.
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        /// Определяем ячейку, которую будем заполнять данными, id ячейки берется из Storyboard
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as?
                GroupsTableViewCell else{
            fatalError("{Message: error in dequeue FriendTableViewCell }")
        }
        
        /// Определяем данные помещеннные в конкретную ячейку в таблице
    cell.groupImage.image = myGroupsList[indexPath.row].imageMain
    cell.groupName.text = myGroupsList[indexPath.row].name
       return cell
    }
//
//
//    /// Функкция овечает за схахивание ячейки влево (Удалить)
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        switch editingStyle {
//        case .delete:
//            /// Перенос из списка друзей в общий список, и изменения статуса "Друг"
//            peopleListFriends[indexPath.row].friend = false
//            let deletedFriend = peopleListFriends[indexPath.row]
//            peopleListFriends.remove(at: indexPath.row)
//            peopleListAll.append(deletedFriend)
//            tableView.deleteRows(at: [indexPath], with: .automatic)
//
//        default:
//            return
//        }
//    }
//
//
//    /// Функция выполняется при нажати на ячейку, и определся номер этой ячейки
//    /// Номер ячейкки присвается глабальной переменной selectedFriendId
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        selectedFriendId = indexPath.row
//        selectedFriend = peopleListFriends[selectedFriendId]
//    }
    
}


