//
//  Groups.swift
//  vk
//
//  Created by Roman on 07.08.2021.
//

import UIKit


struct Group {
    let name: String
    var part: Bool
    let imageMain: UIImage?
}

var groupsList = [Group(name: "appleBlog",  part: false,    imageMain: UIImage(named: "G-0")),
                  Group(name: "itProger",   part: true,     imageMain: UIImage(named: "G-1"))]


/// Список друзей
var myGroupsList: [Group] = []

/// Список не друзей
var allGroupsList: [Group] = []

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
