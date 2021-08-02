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

    private var resuseID = "PhotoCollectionViewCell"


}


extension PeoplePhotoViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: resuseID, for: indexPath) as? PhotoCollectionViewCell else {
            fatalError("{Message: error in dequeue FriendTableViewCell }")
        }
        return cell
    }
    
    
}
