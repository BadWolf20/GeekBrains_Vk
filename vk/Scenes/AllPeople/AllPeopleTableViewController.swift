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
    
    private let avalibleCellID = "AllPeopleTableViewCell"
          
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView(){
        let cellnib = UINib(nibName: avalibleCellID, bundle: nil)
        tableView.register(cellnib, forCellReuseIdentifier: avalibleCellID)
    }
    
    //MARK: - TableView
    /// Отображение и обработак ячеек таблицы и действий с ними

    /// Функция определяет количество отображаемых ячеек в таблице, зависит от количества людей в общем списке
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peopleListAll.count
    }

    
    /// Функция возвращает ячейку. Выполняется столько раз, сколько ячеек будет отображено.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        /// Определяем ячейку, которую будем заполнять данными, id ячейки берется из Storyboard
        guard let cell = tableView.dequeueReusableCell(withIdentifier: avalibleCellID, for: indexPath) as?
                AllPeopleTableViewCell else{
            fatalError("{Message: error in dequeue \(avalibleCellID) }")
        }
        
        /// Определяем данные помещеннные в конкретную ячейку в таблице
        cell.configurartion(with: peopleListAll[indexPath.row])

        return cell
    }
    
}
