//
//  Friend.swift
//  vk
//
//  Created by Roman on 03.08.2021.
//

import UIKit

/// Структура определяющая людей
struct Person {
    let name: String
    var friend: Bool
    let imageMain: UIImage?
    let photos: [UIImage?]
}

/// Все люди в списке
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
                  Person(name: "Danil",     friend: true,       imageMain: UIImage(named: "Danil-0"),
                         photos: [UIImage(named: "Danil-0"),
                                  UIImage(named: "Danil-1"),
                                  UIImage(named: "Danil-2")]),
                  Person(name: "Pavel",     friend: true,       imageMain: UIImage(named: "Pavel-0"),
                         photos: [UIImage(named: "Pavel-0"),
                                  UIImage(named: "Pavel-1"),
                                  UIImage(named: "Pavel-2")]),
                  Person(name: "Max",       friend: true,       imageMain: nil,
                         photos: []),
                  Person(name: "Alex",      friend: true,       imageMain: nil,
                         photos: []),
                  Person(name: "Andrey",    friend: true,       imageMain: nil,
                         photos: []),
    ]


/// Список друзей
var peopleListFriends: [Person] = []

/// Список не друзей
var peopleListAll: [Person] = []

/// Переменные используующиеся для определения выбраного человека на экране друзей.
/// Используются для отображения всех фотографий человека
var selectedFriendId = 0
var selectedFriend = peopleListFriends[0]

/// Функция которая распределяет людей по спискам
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


