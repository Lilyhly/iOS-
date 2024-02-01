//
//  ProfileDesignViewController.swift
//  ProfilePage
//
//  Created by 洪立妍 on 1/26/24.
//

import UIKit

class ProfileDesignViewController: UIViewController {
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "nabaecamp"
        //        self.view.addSubview(profileImage)
        
        
        
        let profileImage = UIImageView()
        profileImage.contentMode = .left
        profileImage.image = UIImage(named: "profileImage")
        profileImage.frame = CGRect(x: 20, y: 120, width: 88, height: 88)
        self.view.addSubview(profileImage)
        
       
        
        
    }
}
