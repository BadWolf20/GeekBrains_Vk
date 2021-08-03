//
//  PeoplePhotoViewController.swift
//  vk
//
//  Created by Roman on 03.08.2021.
//

import UIKit

class PeoplePhotoViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    private var resuseID = "PhotoCollectionViewCell"

    var photoIndex = 0
    
    
}


extension PeoplePhotoViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return selectedFriend.photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: resuseID, for: indexPath) as? PhotoCollectionViewCell else {
            fatalError("{Message: error in dequeue FriendTableViewCell }")
        }
        
        
        
        cell.photo.image = selectedFriend.photos[photoIndex]

        photoIndex += 1
        return cell
        
        
        
        
        
   
    }
    
    
}



