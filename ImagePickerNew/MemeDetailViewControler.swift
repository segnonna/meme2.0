//
//  MemeDetailViewControler.swift
//  ImagePickerNew
//
//  Created by Segnonna Hounsou on 31/03/2022.
//

import UIKit

class MemeDetailViewControler: UIViewController {
    
    var memeImage: UIImage!
    
    @IBOutlet var memeImageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.backItem?.title = "Sent Memes"
        memeImageView.image = memeImage
    }
}
