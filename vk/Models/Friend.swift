//
//  Friend.swift
//  vk
//
//  Created by Roman on 03.08.2021.
//

import UIKit

struct Person {
    let name: String
    let friend: Bool
    let imageMain: UIImage?
    let photos: [UIImage?]


}



var peopleList = [Person(name: "Benji",     friend: false,      imageMain: nil,
                         photos: []),
                  Person(name: "Artem",     friend: false,      imageMain: nil,
                         photos: []),
                  Person(name: "Adam",      friend: false,      imageMain: nil,
                         photos: []),
                  Person(name: "Omar",      friend: false,      imageMain: nil,
                         photos: []),
                  Person(name: "Kirill",    friend: false,      imageMain: nil,
                         photos: []),
                  Person(name: "Kyle",      friend: false,      imageMain: nil,
                         photos: []),
                  Person(name: "Vlad",      friend: false,      imageMain: nil,
                         photos: []),
                  Person(name: "Danil",     friend: true,      imageMain: UIImage(named: "Danil"),
                         photos: [UIImage(named: "Pavel"),
                                  UIImage(named: "Danil")]),
                  Person(name: "Pavel",     friend: true,      imageMain: UIImage(named: "Pavel"),
                         photos: [UIImage(named: "Pavel")]),
                  Person(name: "Max",       friend: true,      imageMain: nil,
                         photos: []),
                  Person(name: "Alex",      friend: true,      imageMain: nil,
                         photos: []),
                  Person(name: "Andrey",    friend: true,      imageMain: nil,
                         photos: []),
    ]

var peopleListFriends: [Person] = []
var peopleListAll: [Person] = []
var selectedFriendId = 0
var selectedFriend = peopleListFriends[0]


func checkList(){
    for list in peopleList {
        
        if list.friend{
            peopleListFriends.append(list)
        }
        else{
            peopleListAll.append(list)
        }
    }
}


