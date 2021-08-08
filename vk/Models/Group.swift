//
//  Groups.swift
//  vk
//
//  Created by Roman on 07.08.2021.
//

import UIKit

/// Структура определяющая группу
struct Group {
    let name: String
    var part: Bool
    let imageMain: UIImage?
}

var groupsList = [Group(name: "appleBlog",  part: false,    imageMain: UIImage(named: "G-0")),
                  Group(name: "itProger",   part: true,     imageMain: UIImage(named: "G-1"))]


/// Список групп
var myGroupsList: [Group] = []

/// Список не нащих групп
var allGroupsList: [Group] = []

/// Функция которая распределяет группы по спискам
func checkGroupList(){
    for list in groupsList {
        
        if list.part{
            myGroupsList.append(list)
        }
        else{
            allGroupsList.append(list)
        }
    }
}
