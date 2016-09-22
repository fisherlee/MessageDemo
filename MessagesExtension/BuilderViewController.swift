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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
