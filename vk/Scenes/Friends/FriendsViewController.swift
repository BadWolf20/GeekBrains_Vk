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
    
    
    //MARK: - Functions
    
    /// Функция которая вызываетя при возвращении из общего списка
    @IBAction func goBackFromAllPeopleScreen(with segue: UIStoryboardSegue){
        
        /// Передачач переменной из вью выхода (общего списка)
        guard let AvalibleVC = segue.source as? AllPeopleTableViewController,
              let indexPath = AvalibleVC.tableView.indexPathForSelectedRow else {return}
        
        /// Перенос из общего списка в список друзей, и изменения статуса "Друг"
        peopleListAll[indexPath.row].friend = false
        let newFriend = peopleListAll[indexPath.row]
        peopleListAll.remove(at: indexPath.row)
        
        /// Проверка нет ли уже человека с такким именем в списке друзей (Вопрос необходиости!!!!!)
        guard !peopleListFriends.contains(where: {person -> Bool in
            person.name == newFriend.name
        }) else {return}
        
        peopleListFriends.append(newFriend)
        friendsTableView.reloadData()
    }
    
    
    //MARK: - Tableview
    /// Отображение и обработак ячеек таблицы и действий с ними

    /// Функция определяет количество отображаемых ячеек в таблице, зависит от количества друзей
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return peopleListFriends.count
    }

    
    /// Функция возвращает ячейку. Выполняется столько раз, сколько ячеек будет отображено.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        /// Определяем ячейку, которую будем заполнять данными, id ячейки берется из Storyboard
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as?
                FriendTableViewCell else{
            fatalError("{Message: error in dequeue FriendTableViewCell }")
        }
        
        /// Определяем данные помещеннные в конкретную ячейку в таблице
        cell.personImage.image = peopleListFriends[indexPath.row].imageMain
        cell.personName.text = peopleListFriends[indexPath.row].name
        return cell
    }
    
    
    /// Функкция овечает за схахивание ячейки влево (Удалить)
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case .delete:
            /// Перенос из списка друзей в общий список, и изменения статуса "Друг"
            peopleListFriends[indexPath.row].friend = false
            let deletedFriend = peopleListFriends[indexPath.row]
            peopleListFriends.remove(at: indexPath.row)
            peopleListAll.append(deletedFriend)
            tableView.deleteRows(at: [indexPath], with: .automatic)
   
        default:
            return
        }
    }
    
    
    /// Функция выполняется при нажати на ячейку, и определся номер этой ячейки
    /// Номер ячейкки присвается глабальной переменной selectedFriendId
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedFriendId = indexPath.row
        selectedFriend = peopleListFriends[selectedFriendId]
    }
    
  

}
