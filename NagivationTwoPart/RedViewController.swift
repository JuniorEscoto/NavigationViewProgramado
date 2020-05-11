//
//  RedViewController.swift
//  NagivationTwoPart
//
//  Created by junior on 5/11/20.
//  Copyright © 2020 junior. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    
    // varible titulo
    var titulo: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if titulo == "Red" {
            title = titulo
            view.backgroundColor = UIColor.red
        } else if titulo == "Green"{
            title = titulo
            view.backgroundColor = UIColor.green
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
