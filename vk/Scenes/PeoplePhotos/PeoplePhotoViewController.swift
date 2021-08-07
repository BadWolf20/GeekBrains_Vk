//
//  PeoplePhotoViewController.swift
//  vk
//
//  Created by Roman on 03.08.2021.
//

import UIKit

class PeoplePhotoViewController: UIViewController {

    
    // MARK: - Outlets
    @IBOutlet var collectionView: UICollectionView!
    
    
    // MARK: - Properties
    private var resuseID = "PhotoCollectionViewCell"
    
}


// MARK: - Extensions
extension PeoplePhotoViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    
    /// Функция определяет количество отображаемых ячеек в таблице, зависит от количества фотографий у человека
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return selectedFriend.photos.count
    }
    
    /// Функция возвращает ячейку. Выполняется столько раз, сколько ячеек будет отображено.
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        /// Определяем ячейку, которую будем заполнять данными, id ячейки берется из Storyboard
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: resuseID, for: indexPath) as? PhotoCollectionViewCell else {
            fatalError("{Message: error in dequeue FriendTableViewCell }")
        }
        
        /// Определяем данные помещеннные в конкретную ячейку в таблице
        cell.photo.image = selectedFriend.photos[indexPath.row]
        return cell
    }
}



