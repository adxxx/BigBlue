//
//  NoteEditVC.swift
//  BigBlue
//
//  Created by 肖博文 on 2022/2/22.
//

import UIKit

class NoteEditVC: UIViewController {

    let photos = [
        UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3")
    ]
    
    @IBOutlet weak var photoCollectionview: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}

extension NoteEditVC: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kPhotoCellID, for: indexPath) as! PhotoCell
        
        cell.imageView.image = photos[indexPath.item]

        return cell
    }
    
}

extension NoteEditVC: UICollectionViewDelegate{
    
}
