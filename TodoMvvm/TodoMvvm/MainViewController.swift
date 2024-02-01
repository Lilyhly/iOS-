//
//  ViewController.swift
//  ProfilePage
//
//  Created by 洪立妍 on 1/26/24.
//

import UIKit

class MainViewController: UIViewController {
    
    let appLogoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named:"Image1")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let todoButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("할일 확인하기", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let todoCompletedButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("완성한일 보기", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let myProfileButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("내 프로필", for:.normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupUI()
        
    }

    func setupUI() {
        view.addSubview(appLogoImageView)
        view.backgroundColor = .white
        
        view.addSubview(todoButton)
        view.addSubview(todoCompletedButton)
        
        
        myProfileButton.addTarget(self, action: #selector(myProfileButtonTapped), for: .touchUpInside)
        view.addSubview(myProfileButton)
        
        todoButton.addTarget(self, action: #selector(todoButtonTapped), for: .touchUpInside)
        view.addSubview(todoButton)
       
        
        NSLayoutConstraint.activate([
            appLogoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            appLogoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            appLogoImageView.widthAnchor.constraint(equalToConstant: 180),
            appLogoImageView.heightAnchor.constraint(equalToConstant:180),
            todoButton.topAnchor.constraint(equalTo: appLogoImageView.bottomAnchor, constant:20),
            todoButton.centerXAnchor.constraint(equalTo:view.centerXAnchor),
            todoCompletedButton.topAnchor.constraint(equalTo: todoButton.bottomAnchor, constant:20),
            todoCompletedButton.centerXAnchor.constraint(equalTo:view.centerXAnchor),
            myProfileButton.topAnchor.constraint(equalTo: todoCompletedButton.bottomAnchor, constant:20),
            myProfileButton.centerXAnchor.constraint(equalTo:view.centerXAnchor),
        ])
        
        
        
        
    }
    
    @objc func myProfileButtonTapped(){
        let profileVC = ProfileDesignViewController()
        navigationController?.pushViewController(profileVC, animated: true)
    }
    
    @objc func todoButtonTapped(){
        let todoVC = TodoViewController()
        navigationController?.pushViewController(todoVC, animated: true)
    }
    
    
}

