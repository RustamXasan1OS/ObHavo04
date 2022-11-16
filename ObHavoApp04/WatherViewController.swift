//
//  ViewController.swift
//  ObHavoApp04
//
//  Created by Rustam Xasan on 11/11/22.
//

import UIKit

class WatherViewController: UIViewController {

    let backgroundView = UIImageView()
    
    //01 joylashuv iconkasini elon qildik
    let locationButton = UIButton()
    
    //05 qidiruv iconkasini elon qildik
    let searchButton = UIButton()
    
    //09 qidruv uchun TexField
    let searchTextField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    style()
    layout()
    }
}

extension WatherViewController {
    func style() {
        
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.image = UIImage(named: "background")
        backgroundView.contentMode = .scaleAspectFill
        
        //02
        locationButton.translatesAutoresizingMaskIntoConstraints = false
        locationButton.setBackgroundImage(UIImage(systemName: "location.viewfinder"), for: .normal)
        locationButton.tintColor = .label
        
        //06
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        searchButton.setBackgroundImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        searchButton.tintColor = .label
        
        //10
        searchTextField.translatesAutoresizingMaskIntoConstraints = false
        searchTextField.font = UIFont.preferredFont(forTextStyle: .title1)
        searchTextField.placeholder = "Search"
        searchTextField.textAlignment = .right
        searchTextField.borderStyle = .roundedRect
        searchTextField.backgroundColor  = .systemFill
    }
    
    func layout() {
        
        view.addSubview(backgroundView)
        //03
        view.addSubview(locationButton)
        
        //08
        view.addSubview(searchButton)
        
        //11
        view.addSubview(searchTextField)
        
        
        //AutoLayout
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            //04 Location iconkani ekranga chiqarish
            locationButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            locationButton.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            locationButton.widthAnchor.constraint(equalToConstant: 40),
            locationButton.heightAnchor.constraint(equalToConstant: 40),
            
            //07 qidiruv iconca ni qoshamiz
            searchButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            
            view.trailingAnchor.constraint(equalToSystemSpacingAfter:
                                            searchButton.trailingAnchor, multiplier: 1),
            searchButton.widthAnchor.constraint(equalToConstant: 40),
            searchButton.heightAnchor.constraint(equalToConstant: 40),
            
            //12
            searchTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            searchTextField.leadingAnchor.constraint(equalToSystemSpacingAfter: locationButton.trailingAnchor, multiplier: 1),
            searchButton.leadingAnchor.constraint(equalToSystemSpacingAfter: searchTextField.trailingAnchor, multiplier: 1),
            
            
            
        ])
    }
}


