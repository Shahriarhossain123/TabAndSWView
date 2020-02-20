//
//  SocialVc.swift
//  TabAndSWView
//
//  Created by apple on 2/19/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class SocialVc: UIViewController {

    @IBOutlet weak var menuBar: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuBar.target = self.revealViewController()
        menuBar.action = #selector(SWRevealViewController.revealToggle(_:))
        // Do any additional setup after loading the view.
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
