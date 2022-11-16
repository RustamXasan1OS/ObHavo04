//
//  ViewController.swift
//  ObHavoApp04
//
//  Created by Rustam Xasan on 11/11/22.
//

import UIKit

class WatherViewController: UIViewController {
    
    let backgroundView = UIImageView()
    
    //06
    let rootStackView = UIStackView()
    
    //01
    let searchStackView = UIStackView()
    //search
    let locationButton = UIButton()
    let searchButton = UIButton()
    let searchTextField = UITextField()
    
    //11 weather
    let conditationImageView = UIImageView()
    //15
    let temperatureLabel = UILabel()
    let cityLabel  = UILabel()
    
    

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
        
        //07
        rootStackView.translatesAutoresizingMaskIntoConstraints = false
        rootStackView.axis = .vertical
        rootStackView.alignment = .trailing
        rootStackView.spacing = 10
        
        //02 search
        searchStackView.translatesAutoresizingMaskIntoConstraints = false
        searchStackView.spacing = 8
        
        locationButton.translatesAutoresizingMaskIntoConstraints = false
        locationButton.setBackgroundImage(UIImage(systemName: "location.viewfinder"), for: .normal)
        locationButton.tintColor = .label
        
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        searchButton.setBackgroundImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        searchButton.tintColor = .label
        
        searchTextField.translatesAutoresizingMaskIntoConstraints = false
        searchTextField.font = UIFont.preferredFont(forTextStyle: .title1)
        searchTextField.placeholder = "Search"
        searchTextField.textAlignment = .right
        searchTextField.borderStyle = .roundedRect
        searchTextField.backgroundColor  = .systemFill
        
        //12 weather
        conditationImageView.translatesAutoresizingMaskIntoConstraints = false
        conditationImageView.image = UIImage(systemName: "sun.max.fill")
        conditationImageView.tintColor = .systemYellow
        
        //16
        temperatureLabel.translatesAutoresizingMaskIntoConstraints = false
        temperatureLabel.font = UIFont.systemFont(ofSize: 50)
        temperatureLabel.text = "15°C"
        temperatureLabel.textColor = .systemOrange
        
        
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        cityLabel.text = "TashkentCity"
        cityLabel.textColor = .systemBlue   
        
    }
    
    func layout() {
        
        view.addSubview(backgroundView)
        
//        //05
//        view.addSubview(searchStackView)
        
        //08
        view.addSubview(rootStackView)
        
        //09
        rootStackView.addArrangedSubview(searchStackView)
        
        //13
        rootStackView.addArrangedSubview(conditationImageView)
        
        //17
        rootStackView.addArrangedSubview(temperatureLabel)
        rootStackView.addArrangedSubview(cityLabel)
        
        //03
        searchStackView.addArrangedSubview(locationButton)
        
        searchStackView.addArrangedSubview(searchTextField)
        searchStackView.addArrangedSubview(searchButton)
        
        
        //AutoLayout
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            //10
            rootStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            rootStackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: rootStackView.trailingAnchor, multiplier: 1),
            
            
            //04
            searchStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            searchStackView.leadingAnchor.constraint(equalToSystemSpacingAfter:view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: rootStackView.trailingAnchor, multiplier: 1),
            searchStackView.widthAnchor.constraint(equalTo: rootStackView.widthAnchor),
            

            locationButton.widthAnchor.constraint(equalToConstant: 40),
            locationButton.heightAnchor.constraint(equalToConstant: 40),
            

            searchButton.widthAnchor.constraint(equalToConstant: 40),
            searchButton.heightAnchor.constraint(equalToConstant: 40),
            
            //14
            conditationImageView.heightAnchor.constraint(equalToConstant: 120),
            conditationImageView.widthAnchor.constraint(equalToConstant: 120),
            
        ])
    }
}


