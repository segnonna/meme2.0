//
//  SetMemesCollectionViewController.swift
//  ImagePickerNew
//
//  Created by Segnonna Hounsou on 30/03/2022.
//

import UIKit

class SentMemesCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        print("collection appear \(self.memes.count)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //collectionView?.reloadData()
    }
     
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.memes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeCollectionViewCell", for: indexPath) as! MemeCollectionViewCell
        let memeRow = self.memes[(indexPath as NSIndexPath).row]
    
        cell.memeImageView?.image = memeRow.memedImage
        
        return cell
    }
}
