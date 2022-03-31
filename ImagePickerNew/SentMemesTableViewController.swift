//
//  SentMemesTableViewController.swift
//  ImagePickerNew
//
//  Created by Segnonna Hounsou on 29/03/2022.
//

import UIKit

class SentMemesTableViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    override func viewWillAppear(_ animated: Bool) {
       // tableView.reloadData()
    }
    override func viewDidAppear(_ animated: Bool) {
        print("table appear \(self.memes.count)")
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return self.memes.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeTableViewCell") as? MemeTableViewCell
        let memeRow = self.memes[(indexPath as NSIndexPath).row]
        cell?.memeText?.text = "\(memeRow.topText) \(memeRow.bottomText)"
        cell?.memeImage?.image = memeRow.memedImage
        
        return cell ?? UITableViewCell()
    }
    
}
