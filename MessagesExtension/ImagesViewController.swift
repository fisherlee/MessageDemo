//
//  ImagesCollectionViewController.swift
//  MessageDemo
//
//  Created by liwei on 16/9/19.
//  Copyright © 2016年 liwei. All rights reserved.
//

import UIKit
import Messages



class ImagesViewController: UICollectionViewController {
    
    let imageList = ["","p1", "p2", "p3", "p4", "p5", "p6"]
    
    static let storyboardIdentifier = "ImagesViewControllerId"
    
    
    weak var delegate: MoreImagesViewControllerDelegate?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false


        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return imageList.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 0 {
            guard let cell = self.collectionView?.dequeueReusableCell(withReuseIdentifier: MoreImagesCell.reuseIdentifier, for: indexPath) as? MoreImagesCell else {
                fatalError("Unable to dequeue am MoreImagesCell");
            }
            
            return cell
        }else {
            guard let cell = self.collectionView?.dequeueReusableCell(withReuseIdentifier: ImagesCell.reuseIdentifier, for: indexPath) as? ImagesCell else {
                fatalError("Unable to dequeue am ImagesCell");
            }
            
            
            let url = Bundle.main.url(forResource: imageList[indexPath.row], withExtension: "png")
            
            do {
                try cell.stickerView.sticker = MSSticker(contentsOfFileURL: url! as URL, localizedDescription: "png")
            } catch  {
                fatalError("Failed to create placeholder sticker: \(error)")
            }
            return cell
        }
    }

    // MARK: UICollectionViewDelegate
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            //delegate?.imagesViewControllerDidSelectAdd(self)
            
            guard let controller = storyboard?.instantiateViewController(withIdentifier: BuilderViewController.storyboardId) as? BuilderViewController else {
                fatalError("Unable to instantiate an ImagesViewController from the storyboard")
            }
            self.present(controller, animated: true, completion: { 
                
            })
        }
    }
}

/**
 A delegate protocol for the `IceCreamsViewController` class.
 */
protocol MoreImagesViewControllerDelegate: class {
    /// Called when a user choses to add a new `IceCream` in the `IceCreamsViewController`.
    func imagesViewControllerDidSelectAdd(_ controller: ImagesViewController)
}
