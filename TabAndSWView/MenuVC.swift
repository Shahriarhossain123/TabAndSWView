//
//  MenuVC.swift
//  TabAndSWView
//
//  Created by apple on 2/19/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class MenuVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
     
    var menu_item = ["Home", "About", "Social"]
    var num = Int()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu_item.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cells = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cells?.textLabel?.text = menu_item[indexPath.row]
        return cells!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "Home", sender: self)
        num = indexPath.row
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Home" {
            let vc = segue.destination as! UINavigationController
            let sliteVC = vc.topViewController as! HomeVC
            
            if num == 0{
                sliteVC.vsName = 0
            } else if num == 1{
                sliteVC.vsName = 1
            } else if num == 2{
                sliteVC.vsName = 2
            }
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
