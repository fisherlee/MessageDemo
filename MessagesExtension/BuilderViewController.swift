//
//  BuilderViewController.swift
//  MessageDemo
//
//  Created by liwei on 16/9/21.
//  Copyright © 2016年 liwei. All rights reserved.
//

import UIKit

class BuilderViewController: UIViewController {

    static let storyboardId = "BuilderViewControllerID"
    
    @IBOutlet weak var searchBar: UISearchBar?
    
    weak var delegate: BuilderViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func builderBackAction() -> Void {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    // MARK: -
    
}


extension BuilderViewController: UISearchBarDelegate {
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        delegate?.builderViewSearchBarTextAction(self)
    }
}

protocol BuilderViewControllerDelegate: class {
    
    func builderViewSearchBarTextAction(_ controller: BuilderViewController)
}
