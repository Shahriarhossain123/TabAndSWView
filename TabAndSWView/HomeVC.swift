//
//  ViewController.swift
//  TabAndSWView
//
//  Created by apple on 2/19/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UITabBarDelegate  {
    
    @IBOutlet weak var menuBar: UIBarButtonItem!
    
    var vsName = Int()
    
    var fvc = UIViewController()

    @IBOutlet weak var tabBar: UITabBar!
    
    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(vsName)
        tabBar.delegate = self
        
        menuBar.target = self.revealViewController()
        menuBar.action = #selector(SWRevealViewController.revealToggle(_:))
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "home") as! PostVC
        fvc = vc
        self.add(vc, frame: self.containerView.frame)
        tabBar.selectedItem?.tag = 0
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if vsName == 1 {
            fvc.remove()
            let vc = storyboard?.instantiateViewController(withIdentifier: "about") as! AboutVC
            fvc = vc
            self.add(vc, frame: self.containerView.frame)
            self.navigationItem.title = "About"
        } else if vsName == 2 {
            fvc.remove()
            let vc = storyboard?.instantiateViewController(withIdentifier: "social") as! SocialVc
            fvc = vc
            self.add(vc, frame: self.containerView.frame)
            self.navigationItem.title = "Social"
        }
    }
    
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
        switch item.tag {
        case 0:
            fvc.remove()
            let vc = storyboard?.instantiateViewController(withIdentifier: "home") as! PostVC
            fvc = vc
            self.add(vc, frame: self.containerView.frame)
            self.navigationItem.title = "Home"
            break
            
        case 1:
            fvc.remove()
            let vc = storyboard?.instantiateViewController(withIdentifier: "myfri") as! MyFriendVC
            fvc = vc
            self.add(vc, frame: self.containerView.frame)
            self.navigationItem.title = "MyFriend"
            break
        case 2:
            fvc.remove()
            let vc = storyboard?.instantiateViewController(withIdentifier: "book") as! BookmarkVC
            fvc = vc
            self.add(vc, frame: self.containerView.frame)
            self.navigationItem.title = "Bookmark"
            break
        case 3:
            fvc.remove()
            let vc = storyboard?.instantiateViewController(withIdentifier: "user") as! UserVC
            fvc = vc
            self.add(vc, frame: self.containerView.frame)
            self.navigationItem.title = "User"
            break
        default:
            break
        }
    }
}

extension UIViewController {
    func add(_ child: UIViewController, frame: CGRect? = nil) {
        addChild(child)
        if let frame = frame {
            child.view.frame = frame
        }
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }
    
    func remove() {
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
   }
}
